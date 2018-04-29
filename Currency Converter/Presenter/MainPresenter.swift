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
        mainInteractor.addDigit(digit)
    }
    
    func deleteDigit(){
        mainInteractor.deleteDigit()
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
        if(inputValueInCents.count == 0 ){
            return
        }
        
        let inputValueCents = UInt64(inputValueInCents)!
        print("FFC: inputValueCents\(inputValueCents)")
        
        let inputDollars = inputValueCents / 100
        let inputCents = inputValueCents % 100
        
        mainView.setInputLabel("\(formatString(inputDollars)).\(inputCents)")
    }
    
    func setOutputAmount(outputValueInCents:String){
        
    }
    
    func setInfoText(_ info:String){
        mainView.setInputLabel(info)
    }
    
    func formatString(_ wholeNumber:UInt64)->String{
        let fmt = NumberFormatter()
        fmt.numberStyle = .decimal
        return fmt.string(for: wholeNumber)!
    }
}

