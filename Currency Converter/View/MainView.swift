//
//  ViewController.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-24.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import UIKit

class MainView: UIViewController {
    @IBOutlet weak var inputAmountLabel: UILabel!
    @IBOutlet weak var outputAmountLabel: UILabel!
    @IBOutlet weak var fromCurrencyPicker: UIPickerView!
    @IBOutlet weak var toCurrencyPicker: UIPickerView!
    @IBOutlet weak var infoTextLabel: UILabel!
    
    var mainInteractor : MainInteractor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainInteractor = MainInteractor(self);
        mainInteractor!.onViewDidLoad();
    }
    
    @IBAction func onInputButtonPressed(_ sender: UIButton) {
        switch (sender.tag) {
        case 0:
            AlamoWrapper().getRates("CAD");
            mainInteractor!.addDigit("0")
        case 1:
            mainInteractor!.addDigit("1")
        case 2:
            mainInteractor!.addDigit("2")
        case 3:
            mainInteractor!.addDigit("3")
        case 4:
            mainInteractor!.addDigit("4")
        case 5:
            mainInteractor!.addDigit("5")
        case 6:
            mainInteractor!.addDigit("6")
        case 7:
            mainInteractor!.addDigit("7")
        case 8:
            mainInteractor!.addDigit("8")
        case 9:
            mainInteractor!.addDigit("9")
        case 10:
            mainInteractor!.addDigit("0")
        case 11:
            mainInteractor!.deleteDigit()
        case 12:
            mainInteractor!.convertAndDisplay()
        default:
            print("Error from onInputButtonPressed")
        }
    }
    
    @IBAction func test(_ sender: UIButton) {
    }
    
    @IBAction func onClearCacheButtonPressed(_ sender: Any) {
    }
    
    func setInputLabel(_ text:String){
        inputAmountLabel.text = text
    }

    func setOuputLabel(_ text:String){
        outputAmountLabel.text = text
    }
    
    func setInfoLabel(_ text:String){
        infoTextLabel.text = text
    }
}
