//
//  ViewController.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-24.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputAmountLabel: UILabel!
    @IBOutlet weak var outputAmountLabel: UILabel!
    @IBOutlet weak var fromCurrencyPicker: UIPickerView!
    @IBOutlet weak var toCurrencyPicker: UIPickerView!
    @IBOutlet weak var infoTextLabel: UILabel!
    
    @IBAction func onInputButtonPrssed(_ sender: Any) {
    }
    @IBAction func onClearCacheButtonPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    } 
}
