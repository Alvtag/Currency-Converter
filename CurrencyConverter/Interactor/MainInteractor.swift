//
//  MainInteractor.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-25.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Foundation

class MainInteractor{
    let MAX_DIGITS = 14
    let MAX_DIGIT_ERROR_STRING = "we support up to 999,999,999,999.99"
    var mainPresenter:MainPresenter
    var outputCurrencyChoice:Int = 0;
    var inputCurrencyChoice:Int = 0;
    var currenciesList:[String] = [String]()
    var inputValueInCents:String = "";
    var pendingConversion:Bool = false;
    var pendingUiPicker:Bool = false;
    
    init(_ mainPresenter:MainPresenter) {
        self.mainPresenter = mainPresenter
    }
    
    func onViewDidLoad(){
        loadCurrecyRateList()
    }
    
    func loadCurrecyRateList(){
        currenciesList.append(contentsOf: RealmWrapper.shared.getCurrenciesList(rateListener : self))
        
        if(currenciesList.count > 0){
            mainPresenter.setCurrenciesList(symbols:currenciesList)
        }
        else{
            pendingUiPicker = true;
            AlamoWrapper.shared.getRates(baseCurrency: "CAD", ratesListener: self)
        }
    }
    
    //MARK:- input value methods
    func addDigit(_ digit:Character){
        if(inputValueInCents.count >= MAX_DIGITS){
            mainPresenter.setInfoText(info:MAX_DIGIT_ERROR_STRING)
            return;
        }
        else if(inputValueInCents.isEmpty && digit == "0"){
            return;
        }
        inputValueInCents.append(digit)
        mainPresenter.setInputAmount(inputValueInCents:inputValueInCents)
    }
    
    func deleteDigit(){
        if(inputValueInCents.count>0){
            let start = String.Index(encodedOffset: 0)
            let end = String.Index(encodedOffset: inputValueInCents.count - 1)
            inputValueInCents = String(inputValueInCents[start..<end])
            
            mainPresenter.setInputAmount(inputValueInCents:inputValueInCents)
        }
    }
    
    func clearCache(){
        RealmWrapper.shared.clear()
    }
    
    func convertAndDisplay(){
        mainPresenter.setInfoText(info:"")
        mainPresenter.setOutputAmount(outputValueInCents: 0.00)
        if(inputValueInCents.isEmpty){
            mainPresenter.setInfoText(info:"Nothing to convert!")
            return;
        }
        
        //TODO ALVTAG REFACTOR FOR BETTER ENCAPSULATION
        let fromIndex = mainPresenter.mainView.fromCurrencyPicker.selectedRow(inComponent: 0)
        let toIndex = mainPresenter.mainView.toCurrencyPicker.selectedRow(inComponent: 0)
        
        RealmWrapper.shared.getRateFromRealm(
            baseCurrencySymbol: currenciesList[fromIndex],
            targetCurrencySymbol: currenciesList[toIndex],
            rateListener: self)
    }
}

extension MainInteractor:GetRealmRateListener{
    func onRealmRateNotAvailable(baseCurrencySymbol: String, toCurrencySymbol: String) {
        //rate isn't in realm, grab it from network
        pendingConversion = true
        AlamoWrapper.shared.getRates(baseCurrency:baseCurrencySymbol, ratesListener:self)
    }
    
    func onRealmRateRetrieved(_ rate: Rate) {
        let input = UInt64(inputValueInCents)!
        let outputValueInDollars:Float = Float(input) * rate.rate / 100.0;
        mainPresenter.setOutputAmount(outputValueInCents: outputValueInDollars)
        mainPresenter.setInfoText(info:"1 \(rate.parent!.currencySymbol) = \(rate.rate) \(rate.currencySymbol), as of \(rate.date) ")
    }
    
    func onRealmCurrencyNotAvailable(_ currencySymbol:String) {
        AlamoWrapper.shared.getRates(baseCurrency:currencySymbol, ratesListener:self)
    }
}

extension MainInteractor:AlamoRatesListener{
    func onAlamoFetchComplete(_ exchangeRates: ExchangeRates) {
        for rate in exchangeRates.rates{
            RealmWrapper.shared.insertRate(baseCurrencySymbol:exchangeRates.base, targetCurrencySymbol:rate.key,
                                           exchangeRate:rate.value, date:exchangeRates.date)
            RealmWrapper.shared.insertRate(baseCurrencySymbol:rate.key, targetCurrencySymbol:exchangeRates.base,
                                           exchangeRate:rate.value, date:exchangeRates.date)
            RealmWrapper.shared.insertRate(baseCurrencySymbol:exchangeRates.base, targetCurrencySymbol:exchangeRates.base,
                                           exchangeRate:1.0, date:exchangeRates.date)
        }
        
        if(pendingUiPicker){
            pendingUiPicker = false;
            loadCurrecyRateList();
        }
        
        if(pendingConversion){
            pendingConversion = false;
            convertAndDisplay()
        }
    }
    
    func onAlamoError(_ error: Error) {
        print("MainInteractor:error \(error)")
    }
}
