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
    var outputCurrencyChoice = 0;
    var inputCurrencyChoice = 0;
    var currenciesList = [String]()
    var inputValueInCents:String = "";
    var pendingConverstion = false; //TODO ALVTAG
    var pendingUiPicker = false; //TODO ALVTAG
    
    init(_ mainPresenter:MainPresenter) {
        self.mainPresenter = mainPresenter
    }
    
    func onViewDidLoad(){
        loadCurrecyRateList()
    }
    
    func loadCurrecyRateList(){
        currenciesList.append(contentsOf: RealmWrapper.shared.getCurrenciesList(rateListener : self))
        print("Alvtag CCC loadCurrecyRateList")
        
        if(currenciesList.count > 0){
            print("Alvtag CC1 loaded from realm")
            print(currenciesList)
            mainPresenter.setCurrenciesList(symbols:currenciesList)
        }
        else{
            print("Alvtag CC2 kicking off alamoWrapper")
            pendingUiPicker = true;
            AlamoWrapper.shared.getRates("CAD", self)
        }
    }
    
    //MARK:- input value methods
    func addDigit(_ digit:Character){
        if(inputValueInCents.count >= MAX_DIGITS){
            mainPresenter.setInfoText(MAX_DIGIT_ERROR_STRING)
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
    
    func convertAndDisplay(){
        
    }
}

extension MainInteractor:GetRealmRateListener{
    func onRealmRateRetrieved(_ rate: Rate) {
        print("ALVTAG: onRealmRateRetrieved:\(rate.currencySymbol)")
        print("ALVTAG: onRealmRateRetrieved:\(rate.rate)")
    }
    
    func onRealmRateNotAvailable(_ currencySymbol:String) {
        print("ALVTAG: onRealmRateNotAvailable:\(currencySymbol)")
        AlamoWrapper.shared.getRates("CAD", self)
    }
    
}

extension MainInteractor:AlamoRatesListener{
    func onAlamoFetchComplete(_ exchangeRates: ExchangeRates) {
        for rate in exchangeRates.rates{
            RealmWrapper.shared.insertRate(baseCurrencySymbol:exchangeRates.base, targetCurrencySymbol:rate.key,exchangeRate:rate.value, date:exchangeRates.date)
            RealmWrapper.shared.insertRate(baseCurrencySymbol:rate.key, targetCurrencySymbol:exchangeRates.base,exchangeRate:rate.value, date:exchangeRates.date)
        }
        
        if(pendingUiPicker){
            pendingUiPicker = false;
            loadCurrecyRateList();
        }
    }
    
    func onAlamoError(_ error: Error) {
        print("MainInteractor:error \(error)")
    }
}
