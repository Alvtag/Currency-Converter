//
//  Rate.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-26.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//
import RealmSwift
import Foundation

class Rate:Object{
    @objc dynamic var currencySymbol:String = ""
    @objc dynamic var rate:Float = 0
    @objc dynamic var date:String = ""
    @objc dynamic var parent:Currency? = nil
    
    convenience init(currencySymbol:String,  rate:Float, date:String, parent:Currency?) {
        self.init()
        self.currencySymbol = currencySymbol
        self.parent = parent
        self.rate = rate
        self.date = date
    }
}
