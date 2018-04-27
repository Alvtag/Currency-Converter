//
//  Currency.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-26.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Foundation
import RealmSwift

class Currency : Object{
    @objc dynamic var currencySymbol:String = ""
    let rates = List<Rate>()
}
