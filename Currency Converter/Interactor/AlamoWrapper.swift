//
//  AlamoWrapper.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-25.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AlamoWrapper{
    let URL:String = "https://exchangeratesapi.io/api/latest"
    let BASE:String = "%%BASE%%";
    
    static let shared = AlamoWrapper()
    private init() {}
    
    func getRates(_ baseCurrency:String, _ ratesListener:AlamoRatesListener) {
        
        let params:[String:String] = ["base":baseCurrency]
        print("ALVTAG: getRates:url:\(URL)")
        
        Alamofire.request(URL, method: .get, parameters:params)
            .responseJSON{
                response in
                if response.result.isSuccess{
                    if let ratesValue = response.result.value {
                        print("ALVTAG AAB \(ratesValue) ")
                        //parse json
                        let exchangeRates = ExchangeRates()
                        let json = JSON(ratesValue)
                        
                        exchangeRates.base = json["base"].stringValue
                        exchangeRates.date = json["date"].stringValue
                        exchangeRates.rates = Dictionary<String,Float>()
                        print("ALVTAG:BB1 getRates:exchangeRates base:\(exchangeRates.base)")
                        print("ALVTAG:BB2 getRates:date:\(exchangeRates.date)")
                        
                        let jsonRatesArray = json["rates"].dictionaryValue
                        for (targetCurrencySymbol, jsonValue) in jsonRatesArray {
                            print("ALVTAG:BB3 \(targetCurrencySymbol)")
                            exchangeRates.rates[targetCurrencySymbol] = Float(jsonValue.stringValue)
                            
                        }
                        print(exchangeRates.rates)
                        
                        //TODO pass exchangeRates back to caller. let the caller deal with writing it into realm.
                        ratesListener.onAlamoFetchComplete(exchangeRates)
                    }
                    else{
                        if let errorUnwrap = response.error {
                            ratesListener.onAlamoError(errorUnwrap)
                        }
                        else{
                            print("unknown error in AlamoWrapper.getRates()")
                        }
                    }
                }
        }
        
    }
    
}
protocol AlamoRatesListener{
    
    func onAlamoFetchComplete(_ exchangeRates:ExchangeRates);
    
    func onAlamoError(_ error:Error);
}


/**
 
 public void getRates(@Nullable String currency, ExchangeRatesCallback exchangeRatesCallback) {
 if (currency == null || currency.isEmpty()) {
 currency = INITIAL_CURRENCY;
 }
 String url = replaceBase(URL, currency);
 RequestQueue queue = Volley.newRequestQueue(BaseApplication.getContext());
 ResponseListener responseListener = new ResponseListener(exchangeRatesCallback);
 // Request a string response from the provided URL.
 StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
 responseListener, responseListener);
 stringRequest.setShouldCache(false);
 queue.add(stringRequest);
 }*/
