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
    
    init() {
        realm = try! Realm()
        print ("Realm file URL:\(Realm.Configuration.defaultConfiguration.fileURL!)")
    }
    
    func getRateFromRealm(baseCurrencySymbol:String, targetCurrencySymbol:String, rateListener:GetRealmRateListener){
        let currencyArray = realm.objects(Currency.self)
        let predicate:NSPredicate = NSPredicate(format: "currencySymbol CONTAINS[cd] %@", baseCurrencySymbol);
        let filteredCurrencyArray = currencyArray.filter(predicate);
        if (filteredCurrencyArray.count == 0) {
            rateListener.onRealmRateNotAvailable(baseCurrencySymbol: baseCurrencySymbol, toCurrencySymbol: targetCurrencySymbol)
            return;
        }
        
        let baseCurrency:Currency = filteredCurrencyArray[0];
        for rate in baseCurrency.rates {
            if(rate.currencySymbol == targetCurrencySymbol){
                rateListener.onRealmRateRetrieved(rate)
                return
            }
        }
        rateListener.onRealmRateNotAvailable(baseCurrencySymbol: baseCurrencySymbol, toCurrencySymbol: targetCurrencySymbol)
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
    
    func clear(){
        do{
            try realm.write {
                for rate in realm.objects(Rate.self){
                        realm.delete(rate)
                }
                for currency in realm.objects(Currency.self){
                    realm.delete(currency)
                }
            }
        }
        catch{
            print("AA9 error deleting something \(error)")
        }
    }
}

protocol GetRealmRateListener{
    func onRealmRateRetrieved(_ rate: Rate);
    func onRealmCurrencyNotAvailable(_ currencySymbol:String);
    func onRealmRateNotAvailable(baseCurrencySymbol:String, toCurrencySymbol:String);
}
