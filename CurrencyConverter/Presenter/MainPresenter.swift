//
//  MainPresenter.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-27.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Foundation

class MainPresenter{
    let mainView:MainView!
    var mainInteractor:MainInteractor!
    
    init(_ mainView:MainView) {
        self.mainView = mainView
        self.mainInteractor = MainInteractor(self)
    }
    
    // MARK: - INCOMING- FROM UI TO INTERACTOR
    func onViewDidLoad(){
        mainInteractor.onViewDidLoad()
    }
    
    func addDigit(_ digit:Character){
        mainView.setOuputLabel("")
        mainInteractor.addDigit(digit)
    }
    
    func deleteDigit(){
        mainInteractor.deleteDigit()
    }
    
    func clearCache(){
        mainInteractor.clearCache()
    }
    
    func convertAndDisplay(){
        mainInteractor.convertAndDisplay()
    }
    
    // MARK: - OUTGOING- FROM INTERACTOR TO UI
    
    func setCurrenciesList(symbols:[String]){
        mainView.initUIPickers()
    }
    
    func getCurrenciesList()->[String]{
        return mainInteractor.currenciesList
    }
    
    func setInputAmount(inputValueInCents:String){
        var inputDollars:UInt64 = 0
        var inputCents:UInt64 = 0
        if(inputValueInCents.count > 0 ){
            let inputValueCents = UInt64(inputValueInCents)!
            inputDollars = inputValueCents / 100
            inputCents = inputValueCents % 100
        }
        
        let centsFormatter = NumberFormatter()
        centsFormatter.minimumIntegerDigits = 2
        centsFormatter.maximumIntegerDigits = 2
        let cents = centsFormatter.string(for: inputCents)!
        
        let dollarsFormatter = NumberFormatter()
        dollarsFormatter.numberStyle = .decimal
        let dollars = dollarsFormatter.string(for: inputDollars)!
        
        mainView.setInputLabel("\(dollars).\(cents)")
    }
    
    func setOutputAmount(outputValueInCents:Float){
        let outputFormatter = NumberFormatter()
        outputFormatter.numberStyle = .decimal
        outputFormatter.minimumFractionDigits = 2
        outputFormatter.maximumFractionDigits = 2
        let outputString = outputFormatter.string(for:outputValueInCents)!;
        mainView.setOuputLabel(outputString)
    }
    
    func setInfoText(info:String){
        mainView.setInfoLabel(info)
    }
}
