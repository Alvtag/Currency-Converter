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
    
    var mainPresenter : MainPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainPresenter = MainPresenter(self);
        mainPresenter.onViewDidLoad();
    }
    
    @IBAction func onInputButtonPressed(_ sender: UIButton) {
        switch (sender.tag) {
        case 0:
            mainPresenter!.addDigit("0")
        case 1:
            mainPresenter!.addDigit("1")
        case 2:
            mainPresenter!.addDigit("2")
        case 3:
            mainPresenter!.addDigit("3")
        case 4:
            mainPresenter!.addDigit("4")
        case 5:
            mainPresenter!.addDigit("5")
        case 6:
            mainPresenter!.addDigit("6")
        case 7:
            mainPresenter!.addDigit("7")
        case 8:
            mainPresenter!.addDigit("8")
        case 9:
            mainPresenter!.addDigit("9")
        case 10:
            mainPresenter!.addDigit("0")
        case 11:
            mainPresenter!.deleteDigit()
        case 12:
            mainPresenter!.convertAndDisplay()
        default:
            print("Error from onInputButtonPressed")
        }
    }
    
    @IBAction func onClearCacheButtonPressed(_ sender: Any) {
        mainPresenter.clearCache()
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
    
    func getFromPickerSelectedRow()->Int{
        return fromCurrencyPicker.selectedRow(inComponent: 0)
    }
    
    
    func getToPickerSelectedRow()->Int{
        return toCurrencyPicker.selectedRow(inComponent: 0)
    }
    
    func initUIPickers(){
        print("point C- should have been mocked")
        fromCurrencyPicker.dataSource = self
        fromCurrencyPicker.delegate = self
        fromCurrencyPicker.reloadAllComponents()
        toCurrencyPicker.dataSource = self
        toCurrencyPicker.delegate = self
        toCurrencyPicker.reloadAllComponents()
    }
}

extension MainView: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mainPresenter.getCurrenciesList().count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return mainPresenter.getCurrenciesList()[row]
    }
}
