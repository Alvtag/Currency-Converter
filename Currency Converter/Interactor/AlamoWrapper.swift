//
//  AlamoWrapper.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-25.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Foundation
import Alamofire

class AlamoWrapper{
    let URL:String = "https://exchangeratesapi.io/api/latest"
    let BASE:String = "%%BASE%%";
    
    func getRates(_ baseCurrency:String = "CAD") {
        
        let params:[String:String] = ["base":baseCurrency]
        print("ALVTAG: getRates:url:\(URL)")
        
        
        Alamofire.request(URL, method: .get, parameters:params)
            .responseJSON{
                response in
                if response.result.isSuccess{
                    if let ratesValue = response.result.value {
                        
                        print("ALVTAG: getRates:ratesValue:\(ratesValue)")
//                            let weatherJson:JSON = JSON(weatherValue)
//                            self.updateWeatherData(json:weatherJson)
//                            self.updateUIWithWeatherData()
                    }
                    else{
                        if let errorUnwrap = response.error {
                            print("ALVTAG: getRates:error:\(errorUnwrap)")
//                                self.cityLabel.text =
//                                "network Error:\(error2.localizedDescription)"
                        }
                        else{
                            print("ALVTAG: getRates:unknown error")
                        }
                    }
                }
        }
        
    }
    
}
protocol RatesListener{
    
    func onFetchComplete( exchangeRates:ExchangeRates);
    
    func onError( error:Error);
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
