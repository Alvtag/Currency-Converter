//
//  RealmWrapper.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-26.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Foundation
import RealmSwift

class RealmWrapper{
    let realm:Realm
    
    static let shared = RealmWrapper()
    private init() {
        realm = try! Realm()
        print ("Realm file URL:")
        print (Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    func getRateFromRealm(currencySymbol:String = "CAD", rateListener:GetRealmRateListener){
        let currencyArray = realm.objects(Currency.self)
        let predicate:NSPredicate = NSPredicate(format: "currencySymbol CONTAINS[cd] %@", currencySymbol);
        print("AA1: \(currencyArray.count)")
        
        let filtered = currencyArray.filter(predicate);
        print("AA2: \(filtered.count)")
        
        for currency in filtered {
            print("AA3, itemResults:\(currency.currencySymbol)");
        }
        
        
        rateListener.onRealmRateNotAvailable(currencySymbol)
    }
    
    func insertRate(baseCurrencySymbol:String, targetCurrencySymbol:String, exchangeRate:Float, date:String){
        let currencyArray = realm.objects(Currency.self)
        let predicate:NSPredicate = NSPredicate(format: "currencySymbol CONTAINS[cd] %@", baseCurrencySymbol);
        let filtered = currencyArray.filter(predicate);
        
        if(filtered.count > 0){
            //currency exists in DB, look for targetCurrency's rate
            let baseCurrency = filtered[0];
            var rateFound = false;
            for rate in baseCurrency.rates {
                if(rate.currencySymbol == targetCurrencySymbol){
                    // rate was previously created,  just update the value
                    rateFound = true;
                    do{
                        try realm.write {
                            rate.date = date
                            rate.rate = exchangeRate;
                        }
                    }
                    catch{
                        print("AA6 error saving category \(error)")
                    }
                    break;
                }
            }
            if(!rateFound){
                // create newRate and append
                let rate = Rate(currencySymbol:targetCurrencySymbol,rate:exchangeRate, date:date, parent:baseCurrency)
                do{
                    try realm.write {
                        baseCurrency.rates.append(rate)
                    }
                }
                catch{
                    print("AA6 error saving category \(error)")
                }
            }
            
        }
        else{
            //create newCurrency, and append newRate to it
            do{
                let newCurrency = Currency()
                newCurrency.currencySymbol = baseCurrencySymbol
                try realm.write {
                    realm.add(newCurrency)
                    let rate = Rate(currencySymbol:targetCurrencySymbol,rate:exchangeRate, date:date, parent:newCurrency)
                    newCurrency.rates.append(rate)
                }
            }
            catch{
                print("AA8 error saving category \(error)")
            }
        }
    }
    
    func getCurrenciesList(rateListener:GetRealmRateListener)-> Set<String>{
        let currencyList = realm.objects(Currency.self)
        var resultSet:Set<String> = Set()
        
        for currency in currencyList{
            resultSet.insert(currency.currencySymbol)
            for rate in currency.rates{
                resultSet.insert(rate.currencySymbol)
            }
        }
        return resultSet
    }
}

protocol GetRealmRateListener {
    func onRealmRateRetrieved(_ rate: Rate);
    func onRealmRateNotAvailable(_ currencySymbol:String);
}
