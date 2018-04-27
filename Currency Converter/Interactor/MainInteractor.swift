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
    var mainController:MainView
    var outputCurrencyChoice = 0;
    var inputCurrencyChoice = 0;
    var currenciesList = [String]()
    var inputValueInCents:String = "";
    var pendingConverstion = false; //TODO ALVTAG
    
    init(_ mainController:MainView) {
        self.mainController = mainController
    }
    
    func onViewDidLoad(){
        
        RealmWrapper.shared.getRateFromRealm(rateListener:self)
    }
    
    
    
    func addDigit(_ digit:Character){
        inputValueInCents.append(digit)
    }
    
    func deleteDigit(){
        if(inputValueInCents.count>0){
            print("deleteDigit() before:\(inputValueInCents)")
            let start = String.Index(encodedOffset: 0)
            let end = String.Index(encodedOffset: inputValueInCents.count)
            inputValueInCents = String(inputValueInCents[start..<end])
            
            print("deleteDigit() after:\(inputValueInCents)")
            
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
    }
    
    func onAlamoError(_ error: Error) {
        print("MainInteractor:error \(error)")
    }
}
