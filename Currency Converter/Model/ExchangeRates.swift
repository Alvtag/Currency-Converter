//
//  ExchangeRate.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-25.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Foundation

/**
 * JSON class from fixer.io
 */
class ExchangeRates{
    var base:String = ""
    var date:String = ""
    var rates:Dictionary =  [String: Float]()
}
