//
//  MainInteractor.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-25.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Foundation

class MainInteractor {
    let MAX_DIGITS = 14
    var mainController:MainView
    var outputCurrencyChoice = 0;
    var inputCurrencyChoice = 0;
    var currenciesList = [String]()
    var inputValueInCents:String = "";
    
    init(_ mainController:MainView) {
        self.mainController = mainController
    }
    
    func onViewDidLoad(){
        AlamoWrapper().getRates()
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
    
    func onRatesFetched(_ exchangeRates:ExchangeRates){
    
    }
    
    func convertAndDisplay(){
        
    }
}
