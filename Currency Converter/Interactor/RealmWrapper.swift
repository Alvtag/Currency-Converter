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
        print("ALVTAG AA1: \(currencyArray.count)")
        
        let filtered = currencyArray.filter(predicate);
        print("ALVTAG AA2: \(filtered.count)")
        
        for currency in filtered {
            print("ALVTAG AA3, itemResults:\(currency.currencySymbol)");
        }
        
        
        rateListener.onRealmRateNotAvailable(currencySymbol)
    }
    
    func insertRate(baseCurrencySymbol:String, targetCurrencySymbol:String, exchangeRate:Float, date:String){
        let currencyArray = realm.objects(Currency.self)
        let predicate:NSPredicate = NSPredicate(format: "currencySymbol CONTAINS[cd] %@", baseCurrencySymbol);
        let filtered = currencyArray.filter(predicate);
        if(filtered.count > 0){
            let baseCurrency = filtered[0];
            print("ALVTAG AA4- currency found \(baseCurrency.currencySymbol)")
            var rateFound = false;
            for rate in baseCurrency.rates {
                if(rate.currencySymbol == targetCurrencySymbol){
                    //found, just update the value
                    print("ALVTAG AA5- rate updated")
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
                print("ALVTAG AA6- rate created and appended")
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
            do{
                print("ALVTAG AA7- currency not found! new Currency obj")
                let newCurrency = Currency()
                newCurrency.currencySymbol = baseCurrencySymbol
                try realm.write {
                    realm.add(newCurrency)
                    let rate = Rate(currencySymbol:targetCurrencySymbol,rate:exchangeRate, date:date, parent:newCurrency)
                    newCurrency.rates.append(rate)
                    print("ALVTAG AA7-ne rate appended")
                }
            }
            catch{
                print("AA8 error saving category \(error)")
            }
        }
        
        //TODO: ALVIN thu 5:45
        // 1 fetch currency for base,
        // 2 if currency not available, create
        // 3. have a realmList and append a new Managed Rate Object
        
    }
}

protocol GetRealmRateListener {
    func onRealmRateRetrieved(_ rate: Rate);
    
    func  onRealmRateNotAvailable(_ currencySymbol:String);
}
