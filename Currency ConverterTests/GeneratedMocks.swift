// MARK: - Mocks generated from file: CurrencyConverter/Interactor/AlamoWrapper.swift at 2018-05-01 15:30:23 +0000

//
//  AlamoWrapper.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-25.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Cuckoo
@testable import Currency_Converter

import Alamofire
import Foundation
import SwiftyJSON

class MockAlamoWrapper: AlamoWrapper, Cuckoo.ClassMock {
    typealias MocksType = AlamoWrapper
    typealias Stubbing = __StubbingProxy_AlamoWrapper
    typealias Verification = __VerificationProxy_AlamoWrapper
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    

    

    
    // ["name": "getRates", "returnSignature": "", "fullyQualifiedName": "getRates(baseCurrency: String, ratesListener: AlamoRatesListener)", "parameterSignature": "baseCurrency: String, ratesListener: AlamoRatesListener", "parameterSignatureWithoutNames": "baseCurrency: String, ratesListener: AlamoRatesListener", "inputTypes": "String, AlamoRatesListener", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "baseCurrency, ratesListener", "call": "baseCurrency: baseCurrency, ratesListener: ratesListener", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("baseCurrency"), name: "baseCurrency", type: "String", range: CountableRange(411..<430), nameRange: CountableRange(411..<423)), CuckooGeneratorFramework.MethodParameter(label: Optional("ratesListener"), name: "ratesListener", type: "AlamoRatesListener", range: CountableRange(432..<464), nameRange: CountableRange(432..<445))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func getRates(baseCurrency: String, ratesListener: AlamoRatesListener)  {
        
            return cuckoo_manager.call("getRates(baseCurrency: String, ratesListener: AlamoRatesListener)",
                parameters: (baseCurrency, ratesListener),
                superclassCall:
                    
                    super.getRates(baseCurrency: baseCurrency, ratesListener: ratesListener)
                    )
        
    }
    

	struct __StubbingProxy_AlamoWrapper: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getRates<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(baseCurrency: M1, ratesListener: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, AlamoRatesListener)> where M1.MatchedType == String, M2.MatchedType == AlamoRatesListener {
	        let matchers: [Cuckoo.ParameterMatcher<(String, AlamoRatesListener)>] = [wrap(matchable: baseCurrency) { $0.0 }, wrap(matchable: ratesListener) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAlamoWrapper.self, method: "getRates(baseCurrency: String, ratesListener: AlamoRatesListener)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_AlamoWrapper: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getRates<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(baseCurrency: M1, ratesListener: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == AlamoRatesListener {
	        let matchers: [Cuckoo.ParameterMatcher<(String, AlamoRatesListener)>] = [wrap(matchable: baseCurrency) { $0.0 }, wrap(matchable: ratesListener) { $0.1 }]
	        return cuckoo_manager.verify("getRates(baseCurrency: String, ratesListener: AlamoRatesListener)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AlamoWrapperStub: AlamoWrapper {
    

    

    
     override func getRates(baseCurrency: String, ratesListener: AlamoRatesListener)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockAlamoRatesListener: AlamoRatesListener, Cuckoo.ProtocolMock {
    typealias MocksType = AlamoRatesListener
    typealias Stubbing = __StubbingProxy_AlamoRatesListener
    typealias Verification = __VerificationProxy_AlamoRatesListener
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "onAlamoFetchComplete", "returnSignature": "", "fullyQualifiedName": "onAlamoFetchComplete(_: ExchangeRates)", "parameterSignature": "_ exchangeRates: ExchangeRates", "parameterSignatureWithoutNames": "exchangeRates: ExchangeRates", "inputTypes": "ExchangeRates", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "exchangeRates", "call": "exchangeRates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "exchangeRates", type: "ExchangeRates", range: CountableRange(2139..<2168), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onAlamoFetchComplete(_ exchangeRates: ExchangeRates)  {
        
            return cuckoo_manager.call("onAlamoFetchComplete(_: ExchangeRates)",
                parameters: (exchangeRates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onAlamoError", "returnSignature": "", "fullyQualifiedName": "onAlamoError(_: Error)", "parameterSignature": "_ error: Error", "parameterSignatureWithoutNames": "error: Error", "inputTypes": "Error", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "error", type: "Error", range: CountableRange(2198..<2211), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onAlamoError(_ error: Error)  {
        
            return cuckoo_manager.call("onAlamoError(_: Error)",
                parameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_AlamoRatesListener: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func onAlamoFetchComplete<M1: Cuckoo.Matchable>(_ exchangeRates: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(ExchangeRates)> where M1.MatchedType == ExchangeRates {
	        let matchers: [Cuckoo.ParameterMatcher<(ExchangeRates)>] = [wrap(matchable: exchangeRates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAlamoRatesListener.self, method: "onAlamoFetchComplete(_: ExchangeRates)", parameterMatchers: matchers))
	    }
	    
	    func onAlamoError<M1: Cuckoo.Matchable>(_ error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Error)> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAlamoRatesListener.self, method: "onAlamoError(_: Error)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_AlamoRatesListener: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func onAlamoFetchComplete<M1: Cuckoo.Matchable>(_ exchangeRates: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == ExchangeRates {
	        let matchers: [Cuckoo.ParameterMatcher<(ExchangeRates)>] = [wrap(matchable: exchangeRates) { $0 }]
	        return cuckoo_manager.verify("onAlamoFetchComplete(_: ExchangeRates)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onAlamoError<M1: Cuckoo.Matchable>(_ error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Error {
	        let matchers: [Cuckoo.ParameterMatcher<(Error)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("onAlamoError(_: Error)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AlamoRatesListenerStub: AlamoRatesListener {
    

    

    
     func onAlamoFetchComplete(_ exchangeRates: ExchangeRates)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onAlamoError(_ error: Error)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: CurrencyConverter/Interactor/MainInteractor.swift at 2018-05-01 15:30:23 +0000

//
//  MainInteractor.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-25.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//
import Cuckoo
@testable import Currency_Converter

import Foundation

class MockMainInteractor: MainInteractor, Cuckoo.ClassMock {
    typealias MocksType = MainInteractor
    typealias Stubbing = __StubbingProxy_MainInteractor
    typealias Verification = __VerificationProxy_MainInteractor
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "mainPresenter", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "MainPresenter", "isReadOnly": false, "accessibility": ""]
     override var mainPresenter: MainPresenter {
        get {
            
            return cuckoo_manager.getter("mainPresenter", superclassCall: super.mainPresenter)
            
        }
        
        set {
            
            cuckoo_manager.setter("mainPresenter", value: newValue, superclassCall: super.mainPresenter = newValue)
            
        }
        
    }
    
    // ["name": "outputCurrencyChoice", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "Int", "isReadOnly": false, "accessibility": ""]
     override var outputCurrencyChoice: Int {
        get {
            
            return cuckoo_manager.getter("outputCurrencyChoice", superclassCall: super.outputCurrencyChoice)
            
        }
        
        set {
            
            cuckoo_manager.setter("outputCurrencyChoice", value: newValue, superclassCall: super.outputCurrencyChoice = newValue)
            
        }
        
    }
    
    // ["name": "inputCurrencyChoice", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "Int", "isReadOnly": false, "accessibility": ""]
     override var inputCurrencyChoice: Int {
        get {
            
            return cuckoo_manager.getter("inputCurrencyChoice", superclassCall: super.inputCurrencyChoice)
            
        }
        
        set {
            
            cuckoo_manager.setter("inputCurrencyChoice", value: newValue, superclassCall: super.inputCurrencyChoice = newValue)
            
        }
        
    }
    
    // ["name": "currenciesList", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "[String]", "isReadOnly": false, "accessibility": ""]
     override var currenciesList: [String] {
        get {
            
            return cuckoo_manager.getter("currenciesList", superclassCall: super.currenciesList)
            
        }
        
        set {
            
            cuckoo_manager.setter("currenciesList", value: newValue, superclassCall: super.currenciesList = newValue)
            
        }
        
    }
    
    // ["name": "inputValueInCents", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "String", "isReadOnly": false, "accessibility": ""]
     override var inputValueInCents: String {
        get {
            
            return cuckoo_manager.getter("inputValueInCents", superclassCall: super.inputValueInCents)
            
        }
        
        set {
            
            cuckoo_manager.setter("inputValueInCents", value: newValue, superclassCall: super.inputValueInCents = newValue)
            
        }
        
    }
    
    // ["name": "pendingConversion", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "Bool", "isReadOnly": false, "accessibility": ""]
     override var pendingConversion: Bool {
        get {
            
            return cuckoo_manager.getter("pendingConversion", superclassCall: super.pendingConversion)
            
        }
        
        set {
            
            cuckoo_manager.setter("pendingConversion", value: newValue, superclassCall: super.pendingConversion = newValue)
            
        }
        
    }
    
    // ["name": "pendingUiPicker", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "Bool", "isReadOnly": false, "accessibility": ""]
     override var pendingUiPicker: Bool {
        get {
            
            return cuckoo_manager.getter("pendingUiPicker", superclassCall: super.pendingUiPicker)
            
        }
        
        set {
            
            cuckoo_manager.setter("pendingUiPicker", value: newValue, superclassCall: super.pendingUiPicker = newValue)
            
        }
        
    }
    

    

    
    // ["name": "onViewDidLoad", "returnSignature": "", "fullyQualifiedName": "onViewDidLoad()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func onViewDidLoad()  {
        
            return cuckoo_manager.call("onViewDidLoad()",
                parameters: (),
                superclassCall:
                    
                    super.onViewDidLoad()
                    )
        
    }
    
    // ["name": "loadCurrecyRateList", "returnSignature": "", "fullyQualifiedName": "loadCurrecyRateList(_: RealmWrapper)", "parameterSignature": "_ realmWrapper: RealmWrapper", "parameterSignatureWithoutNames": "realmWrapper: RealmWrapper", "inputTypes": "RealmWrapper", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "realmWrapper", "call": "realmWrapper", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "realmWrapper", type: "RealmWrapper", range: CountableRange(773..<800), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func loadCurrecyRateList(_ realmWrapper: RealmWrapper)  {
        
            return cuckoo_manager.call("loadCurrecyRateList(_: RealmWrapper)",
                parameters: (realmWrapper),
                superclassCall:
                    
                    super.loadCurrecyRateList(realmWrapper)
                    )
        
    }
    
    // ["name": "addDigit", "returnSignature": "", "fullyQualifiedName": "addDigit(_: Character)", "parameterSignature": "_ digit: Character", "parameterSignatureWithoutNames": "digit: Character", "inputTypes": "Character", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "digit", "call": "digit", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "digit", type: "Character", range: CountableRange(1206..<1223), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func addDigit(_ digit: Character)  {
        
            return cuckoo_manager.call("addDigit(_: Character)",
                parameters: (digit),
                superclassCall:
                    
                    super.addDigit(digit)
                    )
        
    }
    
    // ["name": "deleteDigit", "returnSignature": "", "fullyQualifiedName": "deleteDigit()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func deleteDigit()  {
        
            return cuckoo_manager.call("deleteDigit()",
                parameters: (),
                superclassCall:
                    
                    super.deleteDigit()
                    )
        
    }
    
    // ["name": "clearCache", "returnSignature": "", "fullyQualifiedName": "clearCache(_: RealmWrapper)", "parameterSignature": "_ realmWrapper: RealmWrapper", "parameterSignatureWithoutNames": "realmWrapper: RealmWrapper", "inputTypes": "RealmWrapper", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "realmWrapper", "call": "realmWrapper", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "realmWrapper", type: "RealmWrapper", range: CountableRange(1989..<2016), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func clearCache(_ realmWrapper: RealmWrapper)  {
        
            return cuckoo_manager.call("clearCache(_: RealmWrapper)",
                parameters: (realmWrapper),
                superclassCall:
                    
                    super.clearCache(realmWrapper)
                    )
        
    }
    
    // ["name": "convertAndDisplay", "returnSignature": "", "fullyQualifiedName": "convertAndDisplay(_: RealmWrapper)", "parameterSignature": "_ realmWrapper: RealmWrapper", "parameterSignatureWithoutNames": "realmWrapper: RealmWrapper", "inputTypes": "RealmWrapper", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "realmWrapper", "call": "realmWrapper", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "realmWrapper", type: "RealmWrapper", range: CountableRange(2086..<2113), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func convertAndDisplay(_ realmWrapper: RealmWrapper)  {
        
            return cuckoo_manager.call("convertAndDisplay(_: RealmWrapper)",
                parameters: (realmWrapper),
                superclassCall:
                    
                    super.convertAndDisplay(realmWrapper)
                    )
        
    }
    

	struct __StubbingProxy_MainInteractor: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var mainPresenter: Cuckoo.ClassToBeStubbedProperty<MockMainInteractor, MainPresenter> {
	        return .init(manager: cuckoo_manager, name: "mainPresenter")
	    }
	    
	    var outputCurrencyChoice: Cuckoo.ClassToBeStubbedProperty<MockMainInteractor, Int> {
	        return .init(manager: cuckoo_manager, name: "outputCurrencyChoice")
	    }
	    
	    var inputCurrencyChoice: Cuckoo.ClassToBeStubbedProperty<MockMainInteractor, Int> {
	        return .init(manager: cuckoo_manager, name: "inputCurrencyChoice")
	    }
	    
	    var currenciesList: Cuckoo.ClassToBeStubbedProperty<MockMainInteractor, [String]> {
	        return .init(manager: cuckoo_manager, name: "currenciesList")
	    }
	    
	    var inputValueInCents: Cuckoo.ClassToBeStubbedProperty<MockMainInteractor, String> {
	        return .init(manager: cuckoo_manager, name: "inputValueInCents")
	    }
	    
	    var pendingConversion: Cuckoo.ClassToBeStubbedProperty<MockMainInteractor, Bool> {
	        return .init(manager: cuckoo_manager, name: "pendingConversion")
	    }
	    
	    var pendingUiPicker: Cuckoo.ClassToBeStubbedProperty<MockMainInteractor, Bool> {
	        return .init(manager: cuckoo_manager, name: "pendingUiPicker")
	    }
	    
	    
	    func onViewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainInteractor.self, method: "onViewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func loadCurrecyRateList<M1: Cuckoo.Matchable>(_ realmWrapper: M1) -> Cuckoo.ClassStubNoReturnFunction<(RealmWrapper)> where M1.MatchedType == RealmWrapper {
	        let matchers: [Cuckoo.ParameterMatcher<(RealmWrapper)>] = [wrap(matchable: realmWrapper) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainInteractor.self, method: "loadCurrecyRateList(_: RealmWrapper)", parameterMatchers: matchers))
	    }
	    
	    func addDigit<M1: Cuckoo.Matchable>(_ digit: M1) -> Cuckoo.ClassStubNoReturnFunction<(Character)> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: digit) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainInteractor.self, method: "addDigit(_: Character)", parameterMatchers: matchers))
	    }
	    
	    func deleteDigit() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainInteractor.self, method: "deleteDigit()", parameterMatchers: matchers))
	    }
	    
	    func clearCache<M1: Cuckoo.Matchable>(_ realmWrapper: M1) -> Cuckoo.ClassStubNoReturnFunction<(RealmWrapper)> where M1.MatchedType == RealmWrapper {
	        let matchers: [Cuckoo.ParameterMatcher<(RealmWrapper)>] = [wrap(matchable: realmWrapper) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainInteractor.self, method: "clearCache(_: RealmWrapper)", parameterMatchers: matchers))
	    }
	    
	    func convertAndDisplay<M1: Cuckoo.Matchable>(_ realmWrapper: M1) -> Cuckoo.ClassStubNoReturnFunction<(RealmWrapper)> where M1.MatchedType == RealmWrapper {
	        let matchers: [Cuckoo.ParameterMatcher<(RealmWrapper)>] = [wrap(matchable: realmWrapper) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainInteractor.self, method: "convertAndDisplay(_: RealmWrapper)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_MainInteractor: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var mainPresenter: Cuckoo.VerifyProperty<MainPresenter> {
	        return .init(manager: cuckoo_manager, name: "mainPresenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var outputCurrencyChoice: Cuckoo.VerifyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "outputCurrencyChoice", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var inputCurrencyChoice: Cuckoo.VerifyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "inputCurrencyChoice", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var currenciesList: Cuckoo.VerifyProperty<[String]> {
	        return .init(manager: cuckoo_manager, name: "currenciesList", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var inputValueInCents: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "inputValueInCents", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var pendingConversion: Cuckoo.VerifyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "pendingConversion", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var pendingUiPicker: Cuckoo.VerifyProperty<Bool> {
	        return .init(manager: cuckoo_manager, name: "pendingUiPicker", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func onViewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onViewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func loadCurrecyRateList<M1: Cuckoo.Matchable>(_ realmWrapper: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == RealmWrapper {
	        let matchers: [Cuckoo.ParameterMatcher<(RealmWrapper)>] = [wrap(matchable: realmWrapper) { $0 }]
	        return cuckoo_manager.verify("loadCurrecyRateList(_: RealmWrapper)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func addDigit<M1: Cuckoo.Matchable>(_ digit: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: digit) { $0 }]
	        return cuckoo_manager.verify("addDigit(_: Character)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func deleteDigit() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("deleteDigit()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func clearCache<M1: Cuckoo.Matchable>(_ realmWrapper: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == RealmWrapper {
	        let matchers: [Cuckoo.ParameterMatcher<(RealmWrapper)>] = [wrap(matchable: realmWrapper) { $0 }]
	        return cuckoo_manager.verify("clearCache(_: RealmWrapper)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func convertAndDisplay<M1: Cuckoo.Matchable>(_ realmWrapper: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == RealmWrapper {
	        let matchers: [Cuckoo.ParameterMatcher<(RealmWrapper)>] = [wrap(matchable: realmWrapper) { $0 }]
	        return cuckoo_manager.verify("convertAndDisplay(_: RealmWrapper)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class MainInteractorStub: MainInteractor {
    
     override var mainPresenter: MainPresenter {
        get {
            return DefaultValueRegistry.defaultValue(for: (MainPresenter).self)
        }
        
        set { }
        
    }
    
     override var outputCurrencyChoice: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
        set { }
        
    }
    
     override var inputCurrencyChoice: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
        set { }
        
    }
    
     override var currenciesList: [String] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([String]).self)
        }
        
        set { }
        
    }
    
     override var inputValueInCents: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    
     override var pendingConversion: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
        set { }
        
    }
    
     override var pendingUiPicker: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        
        set { }
        
    }
    

    

    
     override func onViewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func loadCurrecyRateList(_ realmWrapper: RealmWrapper)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func addDigit(_ digit: Character)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func deleteDigit()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func clearCache(_ realmWrapper: RealmWrapper)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func convertAndDisplay(_ realmWrapper: RealmWrapper)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: CurrencyConverter/Interactor/RealmWrapper.swift at 2018-05-01 15:30:23 +0000

//
//  RealmWrapper.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-26.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Cuckoo
@testable import Currency_Converter

import Foundation
import RealmSwift

class MockRealmWrapper: RealmWrapper, Cuckoo.ClassMock {
    typealias MocksType = RealmWrapper
    typealias Stubbing = __StubbingProxy_RealmWrapper
    typealias Verification = __VerificationProxy_RealmWrapper
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    

    

    
    // ["name": "getRateFromRealm", "returnSignature": "", "fullyQualifiedName": "getRateFromRealm(baseCurrencySymbol: String, targetCurrencySymbol: String, rateListener: GetRealmRateListener)", "parameterSignature": "baseCurrencySymbol: String, targetCurrencySymbol: String, rateListener: GetRealmRateListener", "parameterSignatureWithoutNames": "baseCurrencySymbol: String, targetCurrencySymbol: String, rateListener: GetRealmRateListener", "inputTypes": "String, String, GetRealmRateListener", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "baseCurrencySymbol, targetCurrencySymbol, rateListener", "call": "baseCurrencySymbol: baseCurrencySymbol, targetCurrencySymbol: targetCurrencySymbol, rateListener: rateListener", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("baseCurrencySymbol"), name: "baseCurrencySymbol", type: "String", range: CountableRange(399..<424), nameRange: CountableRange(399..<417)), CuckooGeneratorFramework.MethodParameter(label: Optional("targetCurrencySymbol"), name: "targetCurrencySymbol", type: "String", range: CountableRange(426..<453), nameRange: CountableRange(426..<446)), CuckooGeneratorFramework.MethodParameter(label: Optional("rateListener"), name: "rateListener", type: "GetRealmRateListener", range: CountableRange(455..<488), nameRange: CountableRange(455..<467))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func getRateFromRealm(baseCurrencySymbol: String, targetCurrencySymbol: String, rateListener: GetRealmRateListener)  {
        
            return cuckoo_manager.call("getRateFromRealm(baseCurrencySymbol: String, targetCurrencySymbol: String, rateListener: GetRealmRateListener)",
                parameters: (baseCurrencySymbol, targetCurrencySymbol, rateListener),
                superclassCall:
                    
                    super.getRateFromRealm(baseCurrencySymbol: baseCurrencySymbol, targetCurrencySymbol: targetCurrencySymbol, rateListener: rateListener)
                    )
        
    }
    
    // ["name": "insertRate", "returnSignature": "", "fullyQualifiedName": "insertRate(baseCurrencySymbol: String, targetCurrencySymbol: String, exchangeRate: Float, date: String)", "parameterSignature": "baseCurrencySymbol: String, targetCurrencySymbol: String, exchangeRate: Float, date: String", "parameterSignatureWithoutNames": "baseCurrencySymbol: String, targetCurrencySymbol: String, exchangeRate: Float, date: String", "inputTypes": "String, String, Float, String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "baseCurrencySymbol, targetCurrencySymbol, exchangeRate, date", "call": "baseCurrencySymbol: baseCurrencySymbol, targetCurrencySymbol: targetCurrencySymbol, exchangeRate: exchangeRate, date: date", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("baseCurrencySymbol"), name: "baseCurrencySymbol", type: "String", range: CountableRange(1367..<1392), nameRange: CountableRange(1367..<1385)), CuckooGeneratorFramework.MethodParameter(label: Optional("targetCurrencySymbol"), name: "targetCurrencySymbol", type: "String", range: CountableRange(1394..<1421), nameRange: CountableRange(1394..<1414)), CuckooGeneratorFramework.MethodParameter(label: Optional("exchangeRate"), name: "exchangeRate", type: "Float", range: CountableRange(1423..<1441), nameRange: CountableRange(1423..<1435)), CuckooGeneratorFramework.MethodParameter(label: Optional("date"), name: "date", type: "String", range: CountableRange(1443..<1454), nameRange: CountableRange(1443..<1447))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func insertRate(baseCurrencySymbol: String, targetCurrencySymbol: String, exchangeRate: Float, date: String)  {
        
            return cuckoo_manager.call("insertRate(baseCurrencySymbol: String, targetCurrencySymbol: String, exchangeRate: Float, date: String)",
                parameters: (baseCurrencySymbol, targetCurrencySymbol, exchangeRate, date),
                superclassCall:
                    
                    super.insertRate(baseCurrencySymbol: baseCurrencySymbol, targetCurrencySymbol: targetCurrencySymbol, exchangeRate: exchangeRate, date: date)
                    )
        
    }
    
    // ["name": "getCurrenciesList", "returnSignature": " -> Set<String>", "fullyQualifiedName": "getCurrenciesList(rateListener: GetRealmRateListener) -> Set<String>", "parameterSignature": "rateListener: GetRealmRateListener", "parameterSignatureWithoutNames": "rateListener: GetRealmRateListener", "inputTypes": "GetRealmRateListener", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "rateListener", "call": "rateListener: rateListener", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rateListener"), name: "rateListener", type: "GetRealmRateListener", range: CountableRange(3590..<3623), nameRange: CountableRange(3590..<3602))], "returnType": "Set<String>", "isOptional": false, "stubFunction": "Cuckoo.ClassStubFunction"]
     override func getCurrenciesList(rateListener: GetRealmRateListener)  -> Set<String> {
        
            return cuckoo_manager.call("getCurrenciesList(rateListener: GetRealmRateListener) -> Set<String>",
                parameters: (rateListener),
                superclassCall:
                    
                    super.getCurrenciesList(rateListener: rateListener)
                    )
        
    }
    
    // ["name": "clear", "returnSignature": "", "fullyQualifiedName": "clear()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func clear()  {
        
            return cuckoo_manager.call("clear()",
                parameters: (),
                superclassCall:
                    
                    super.clear()
                    )
        
    }
    

	struct __StubbingProxy_RealmWrapper: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getRateFromRealm<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(baseCurrencySymbol: M1, targetCurrencySymbol: M2, rateListener: M3) -> Cuckoo.ClassStubNoReturnFunction<(String, String, GetRealmRateListener)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == GetRealmRateListener {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, GetRealmRateListener)>] = [wrap(matchable: baseCurrencySymbol) { $0.0 }, wrap(matchable: targetCurrencySymbol) { $0.1 }, wrap(matchable: rateListener) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRealmWrapper.self, method: "getRateFromRealm(baseCurrencySymbol: String, targetCurrencySymbol: String, rateListener: GetRealmRateListener)", parameterMatchers: matchers))
	    }
	    
	    func insertRate<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(baseCurrencySymbol: M1, targetCurrencySymbol: M2, exchangeRate: M3, date: M4) -> Cuckoo.ClassStubNoReturnFunction<(String, String, Float, String)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == Float, M4.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, Float, String)>] = [wrap(matchable: baseCurrencySymbol) { $0.0 }, wrap(matchable: targetCurrencySymbol) { $0.1 }, wrap(matchable: exchangeRate) { $0.2 }, wrap(matchable: date) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRealmWrapper.self, method: "insertRate(baseCurrencySymbol: String, targetCurrencySymbol: String, exchangeRate: Float, date: String)", parameterMatchers: matchers))
	    }
	    
	    func getCurrenciesList<M1: Cuckoo.Matchable>(rateListener: M1) -> Cuckoo.ClassStubFunction<(GetRealmRateListener), Set<String>> where M1.MatchedType == GetRealmRateListener {
	        let matchers: [Cuckoo.ParameterMatcher<(GetRealmRateListener)>] = [wrap(matchable: rateListener) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRealmWrapper.self, method: "getCurrenciesList(rateListener: GetRealmRateListener) -> Set<String>", parameterMatchers: matchers))
	    }
	    
	    func clear() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRealmWrapper.self, method: "clear()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_RealmWrapper: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getRateFromRealm<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(baseCurrencySymbol: M1, targetCurrencySymbol: M2, rateListener: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == GetRealmRateListener {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, GetRealmRateListener)>] = [wrap(matchable: baseCurrencySymbol) { $0.0 }, wrap(matchable: targetCurrencySymbol) { $0.1 }, wrap(matchable: rateListener) { $0.2 }]
	        return cuckoo_manager.verify("getRateFromRealm(baseCurrencySymbol: String, targetCurrencySymbol: String, rateListener: GetRealmRateListener)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func insertRate<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(baseCurrencySymbol: M1, targetCurrencySymbol: M2, exchangeRate: M3, date: M4) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == Float, M4.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, Float, String)>] = [wrap(matchable: baseCurrencySymbol) { $0.0 }, wrap(matchable: targetCurrencySymbol) { $0.1 }, wrap(matchable: exchangeRate) { $0.2 }, wrap(matchable: date) { $0.3 }]
	        return cuckoo_manager.verify("insertRate(baseCurrencySymbol: String, targetCurrencySymbol: String, exchangeRate: Float, date: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getCurrenciesList<M1: Cuckoo.Matchable>(rateListener: M1) -> Cuckoo.__DoNotUse<Set<String>> where M1.MatchedType == GetRealmRateListener {
	        let matchers: [Cuckoo.ParameterMatcher<(GetRealmRateListener)>] = [wrap(matchable: rateListener) { $0 }]
	        return cuckoo_manager.verify("getCurrenciesList(rateListener: GetRealmRateListener) -> Set<String>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func clear() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("clear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class RealmWrapperStub: RealmWrapper {
    

    

    
     override func getRateFromRealm(baseCurrencySymbol: String, targetCurrencySymbol: String, rateListener: GetRealmRateListener)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func insertRate(baseCurrencySymbol: String, targetCurrencySymbol: String, exchangeRate: Float, date: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getCurrenciesList(rateListener: GetRealmRateListener)  -> Set<String> {
        return DefaultValueRegistry.defaultValue(for: Set<String>.self)
    }
    
     override func clear()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockGetRealmRateListener: GetRealmRateListener, Cuckoo.ProtocolMock {
    typealias MocksType = GetRealmRateListener
    typealias Stubbing = __StubbingProxy_GetRealmRateListener
    typealias Verification = __VerificationProxy_GetRealmRateListener
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "onRealmRateRetrieved", "returnSignature": "", "fullyQualifiedName": "onRealmRateRetrieved(_: Rate)", "parameterSignature": "_ rate: Rate", "parameterSignatureWithoutNames": "rate: Rate", "inputTypes": "Rate", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rate", "call": "rate", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "rate", type: "Rate", range: CountableRange(4469..<4481), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onRealmRateRetrieved(_ rate: Rate)  {
        
            return cuckoo_manager.call("onRealmRateRetrieved(_: Rate)",
                parameters: (rate),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onRealmCurrencyNotAvailable", "returnSignature": "", "fullyQualifiedName": "onRealmCurrencyNotAvailable(_: String)", "parameterSignature": "_ currencySymbol: String", "parameterSignatureWithoutNames": "currencySymbol: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currencySymbol", "call": "currencySymbol", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "currencySymbol", type: "String", range: CountableRange(4521..<4544), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onRealmCurrencyNotAvailable(_ currencySymbol: String)  {
        
            return cuckoo_manager.call("onRealmCurrencyNotAvailable(_: String)",
                parameters: (currencySymbol),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onRealmRateNotAvailable", "returnSignature": "", "fullyQualifiedName": "onRealmRateNotAvailable(baseCurrencySymbol: String, toCurrencySymbol: String)", "parameterSignature": "baseCurrencySymbol: String, toCurrencySymbol: String", "parameterSignatureWithoutNames": "baseCurrencySymbol: String, toCurrencySymbol: String", "inputTypes": "String, String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "baseCurrencySymbol, toCurrencySymbol", "call": "baseCurrencySymbol: baseCurrencySymbol, toCurrencySymbol: toCurrencySymbol", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("baseCurrencySymbol"), name: "baseCurrencySymbol", type: "String", range: CountableRange(4580..<4605), nameRange: CountableRange(4580..<4598)), CuckooGeneratorFramework.MethodParameter(label: Optional("toCurrencySymbol"), name: "toCurrencySymbol", type: "String", range: CountableRange(4607..<4630), nameRange: CountableRange(4607..<4623))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onRealmRateNotAvailable(baseCurrencySymbol: String, toCurrencySymbol: String)  {
        
            return cuckoo_manager.call("onRealmRateNotAvailable(baseCurrencySymbol: String, toCurrencySymbol: String)",
                parameters: (baseCurrencySymbol, toCurrencySymbol),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_GetRealmRateListener: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func onRealmRateRetrieved<M1: Cuckoo.Matchable>(_ rate: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Rate)> where M1.MatchedType == Rate {
	        let matchers: [Cuckoo.ParameterMatcher<(Rate)>] = [wrap(matchable: rate) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGetRealmRateListener.self, method: "onRealmRateRetrieved(_: Rate)", parameterMatchers: matchers))
	    }
	    
	    func onRealmCurrencyNotAvailable<M1: Cuckoo.Matchable>(_ currencySymbol: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currencySymbol) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGetRealmRateListener.self, method: "onRealmCurrencyNotAvailable(_: String)", parameterMatchers: matchers))
	    }
	    
	    func onRealmRateNotAvailable<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(baseCurrencySymbol: M1, toCurrencySymbol: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String)> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: baseCurrencySymbol) { $0.0 }, wrap(matchable: toCurrencySymbol) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGetRealmRateListener.self, method: "onRealmRateNotAvailable(baseCurrencySymbol: String, toCurrencySymbol: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_GetRealmRateListener: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func onRealmRateRetrieved<M1: Cuckoo.Matchable>(_ rate: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Rate {
	        let matchers: [Cuckoo.ParameterMatcher<(Rate)>] = [wrap(matchable: rate) { $0 }]
	        return cuckoo_manager.verify("onRealmRateRetrieved(_: Rate)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onRealmCurrencyNotAvailable<M1: Cuckoo.Matchable>(_ currencySymbol: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currencySymbol) { $0 }]
	        return cuckoo_manager.verify("onRealmCurrencyNotAvailable(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onRealmRateNotAvailable<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(baseCurrencySymbol: M1, toCurrencySymbol: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String)>] = [wrap(matchable: baseCurrencySymbol) { $0.0 }, wrap(matchable: toCurrencySymbol) { $0.1 }]
	        return cuckoo_manager.verify("onRealmRateNotAvailable(baseCurrencySymbol: String, toCurrencySymbol: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class GetRealmRateListenerStub: GetRealmRateListener {
    

    

    
     func onRealmRateRetrieved(_ rate: Rate)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onRealmCurrencyNotAvailable(_ currencySymbol: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onRealmRateNotAvailable(baseCurrencySymbol: String, toCurrencySymbol: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: CurrencyConverter/Model/Currency.swift at 2018-05-01 15:30:23 +0000

//
//  Currency.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-26.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Cuckoo
@testable import Currency_Converter

import Foundation
import RealmSwift

class MockCurrency: Currency, Cuckoo.ClassMock {
    typealias MocksType = Currency
    typealias Stubbing = __StubbingProxy_Currency
    typealias Verification = __VerificationProxy_Currency
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "currencySymbol", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "String", "isReadOnly": false, "accessibility": ""]
     override var currencySymbol: String {
        get {
            
            return cuckoo_manager.getter("currencySymbol", superclassCall: super.currencySymbol)
            
        }
        
        set {
            
            cuckoo_manager.setter("currencySymbol", value: newValue, superclassCall: super.currencySymbol = newValue)
            
        }
        
    }
    

    

    

	struct __StubbingProxy_Currency: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var currencySymbol: Cuckoo.ClassToBeStubbedProperty<MockCurrency, String> {
	        return .init(manager: cuckoo_manager, name: "currencySymbol")
	    }
	    
	    
	}

	struct __VerificationProxy_Currency: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var currencySymbol: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "currencySymbol", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}

}

 class CurrencyStub: Currency {
    
     override var currencySymbol: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: CurrencyConverter/Model/Rate.swift at 2018-05-01 15:30:23 +0000

//
//  Rate.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-26.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//
import Cuckoo
@testable import Currency_Converter

import Foundation
import RealmSwift

class MockRate: Rate, Cuckoo.ClassMock {
    typealias MocksType = Rate
    typealias Stubbing = __StubbingProxy_Rate
    typealias Verification = __VerificationProxy_Rate
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "currencySymbol", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "String", "isReadOnly": false, "accessibility": ""]
     override var currencySymbol: String {
        get {
            
            return cuckoo_manager.getter("currencySymbol", superclassCall: super.currencySymbol)
            
        }
        
        set {
            
            cuckoo_manager.setter("currencySymbol", value: newValue, superclassCall: super.currencySymbol = newValue)
            
        }
        
    }
    
    // ["name": "rate", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "Float", "isReadOnly": false, "accessibility": ""]
     override var rate: Float {
        get {
            
            return cuckoo_manager.getter("rate", superclassCall: super.rate)
            
        }
        
        set {
            
            cuckoo_manager.setter("rate", value: newValue, superclassCall: super.rate = newValue)
            
        }
        
    }
    
    // ["name": "date", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "String", "isReadOnly": false, "accessibility": ""]
     override var date: String {
        get {
            
            return cuckoo_manager.getter("date", superclassCall: super.date)
            
        }
        
        set {
            
            cuckoo_manager.setter("date", value: newValue, superclassCall: super.date = newValue)
            
        }
        
    }
    
    // ["name": "parent", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "Currency?", "isReadOnly": false, "accessibility": ""]
     override var parent: Currency? {
        get {
            
            return cuckoo_manager.getter("parent", superclassCall: super.parent)
            
        }
        
        set {
            
            cuckoo_manager.setter("parent", value: newValue, superclassCall: super.parent = newValue)
            
        }
        
    }
    

    

    

	struct __StubbingProxy_Rate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var currencySymbol: Cuckoo.ClassToBeStubbedProperty<MockRate, String> {
	        return .init(manager: cuckoo_manager, name: "currencySymbol")
	    }
	    
	    var rate: Cuckoo.ClassToBeStubbedProperty<MockRate, Float> {
	        return .init(manager: cuckoo_manager, name: "rate")
	    }
	    
	    var date: Cuckoo.ClassToBeStubbedProperty<MockRate, String> {
	        return .init(manager: cuckoo_manager, name: "date")
	    }
	    
	    var parent: Cuckoo.ClassToBeStubbedProperty<MockRate, Currency?> {
	        return .init(manager: cuckoo_manager, name: "parent")
	    }
	    
	    
	}

	struct __VerificationProxy_Rate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var currencySymbol: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "currencySymbol", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var rate: Cuckoo.VerifyProperty<Float> {
	        return .init(manager: cuckoo_manager, name: "rate", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var date: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "date", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var parent: Cuckoo.VerifyProperty<Currency?> {
	        return .init(manager: cuckoo_manager, name: "parent", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}

}

 class RateStub: Rate {
    
     override var currencySymbol: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    
     override var rate: Float {
        get {
            return DefaultValueRegistry.defaultValue(for: (Float).self)
        }
        
        set { }
        
    }
    
     override var date: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    
     override var parent: Currency? {
        get {
            return DefaultValueRegistry.defaultValue(for: (Currency?).self)
        }
        
        set { }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: CurrencyConverter/Presenter/MainPresenter.swift at 2018-05-01 15:30:23 +0000

//
//  MainPresenter.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-27.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Cuckoo
@testable import Currency_Converter

import Foundation

class MockMainPresenter: MainPresenter, Cuckoo.ClassMock {
    typealias MocksType = MainPresenter
    typealias Stubbing = __StubbingProxy_MainPresenter
    typealias Verification = __VerificationProxy_MainPresenter
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "mainInteractor", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "MainInteractor!", "isReadOnly": false, "accessibility": ""]
     override var mainInteractor: MainInteractor! {
        get {
            
            return cuckoo_manager.getter("mainInteractor", superclassCall: super.mainInteractor)
            
        }
        
        set {
            
            cuckoo_manager.setter("mainInteractor", value: newValue, superclassCall: super.mainInteractor = newValue)
            
        }
        
    }
    

    

    
    // ["name": "onViewDidLoad", "returnSignature": "", "fullyQualifiedName": "onViewDidLoad()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func onViewDidLoad()  {
        
            return cuckoo_manager.call("onViewDidLoad()",
                parameters: (),
                superclassCall:
                    
                    super.onViewDidLoad()
                    )
        
    }
    
    // ["name": "addDigit", "returnSignature": "", "fullyQualifiedName": "addDigit(_: Character)", "parameterSignature": "_ digit: Character", "parameterSignatureWithoutNames": "digit: Character", "inputTypes": "Character", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "digit", "call": "digit", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "digit", type: "Character", range: CountableRange(532..<549), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func addDigit(_ digit: Character)  {
        
            return cuckoo_manager.call("addDigit(_: Character)",
                parameters: (digit),
                superclassCall:
                    
                    super.addDigit(digit)
                    )
        
    }
    
    // ["name": "deleteDigit", "returnSignature": "", "fullyQualifiedName": "deleteDigit()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func deleteDigit()  {
        
            return cuckoo_manager.call("deleteDigit()",
                parameters: (),
                superclassCall:
                    
                    super.deleteDigit()
                    )
        
    }
    
    // ["name": "clearCache", "returnSignature": "", "fullyQualifiedName": "clearCache()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func clearCache()  {
        
            return cuckoo_manager.call("clearCache()",
                parameters: (),
                superclassCall:
                    
                    super.clearCache()
                    )
        
    }
    
    // ["name": "convertAndDisplay", "returnSignature": "", "fullyQualifiedName": "convertAndDisplay()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func convertAndDisplay()  {
        
            return cuckoo_manager.call("convertAndDisplay()",
                parameters: (),
                superclassCall:
                    
                    super.convertAndDisplay()
                    )
        
    }
    
    // ["name": "setCurrenciesList", "returnSignature": "", "fullyQualifiedName": "setCurrenciesList()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setCurrenciesList()  {
        
            return cuckoo_manager.call("setCurrenciesList()",
                parameters: (),
                superclassCall:
                    
                    super.setCurrenciesList()
                    )
        
    }
    
    // ["name": "getCurrenciesList", "returnSignature": " ->[String]", "fullyQualifiedName": "getCurrenciesList() ->[String]", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "[String]", "isOptional": false, "stubFunction": "Cuckoo.ClassStubFunction"]
     override func getCurrenciesList()  ->[String] {
        
            return cuckoo_manager.call("getCurrenciesList() ->[String]",
                parameters: (),
                superclassCall:
                    
                    super.getCurrenciesList()
                    )
        
    }
    
    // ["name": "setInputAmount", "returnSignature": "", "fullyQualifiedName": "setInputAmount(inputValueInCents: String)", "parameterSignature": "inputValueInCents: String", "parameterSignatureWithoutNames": "inputValueInCents: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "inputValueInCents", "call": "inputValueInCents: inputValueInCents", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("inputValueInCents"), name: "inputValueInCents", type: "String", range: CountableRange(1137..<1161), nameRange: CountableRange(1137..<1154))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setInputAmount(inputValueInCents: String)  {
        
            return cuckoo_manager.call("setInputAmount(inputValueInCents: String)",
                parameters: (inputValueInCents),
                superclassCall:
                    
                    super.setInputAmount(inputValueInCents: inputValueInCents)
                    )
        
    }
    
    // ["name": "setOutputAmount", "returnSignature": "", "fullyQualifiedName": "setOutputAmount(outputValueInCents: Float)", "parameterSignature": "outputValueInCents: Float", "parameterSignatureWithoutNames": "outputValueInCents: Float", "inputTypes": "Float", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "outputValueInCents", "call": "outputValueInCents: outputValueInCents", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("outputValueInCents"), name: "outputValueInCents", type: "Float", range: CountableRange(1926..<1950), nameRange: CountableRange(1926..<1944))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setOutputAmount(outputValueInCents: Float)  {
        
            return cuckoo_manager.call("setOutputAmount(outputValueInCents: Float)",
                parameters: (outputValueInCents),
                superclassCall:
                    
                    super.setOutputAmount(outputValueInCents: outputValueInCents)
                    )
        
    }
    
    // ["name": "setInfoText", "returnSignature": "", "fullyQualifiedName": "setInfoText(info: String)", "parameterSignature": "info: String", "parameterSignatureWithoutNames": "info: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "info", "call": "info: info", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("info"), name: "info", type: "String", range: CountableRange(2301..<2312), nameRange: CountableRange(2301..<2305))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setInfoText(info: String)  {
        
            return cuckoo_manager.call("setInfoText(info: String)",
                parameters: (info),
                superclassCall:
                    
                    super.setInfoText(info: info)
                    )
        
    }
    
    // ["name": "getFromPickerSelectedRow", "returnSignature": " ->Int", "fullyQualifiedName": "getFromPickerSelectedRow() ->Int", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Int", "isOptional": false, "stubFunction": "Cuckoo.ClassStubFunction"]
     override func getFromPickerSelectedRow()  ->Int {
        
            return cuckoo_manager.call("getFromPickerSelectedRow() ->Int",
                parameters: (),
                superclassCall:
                    
                    super.getFromPickerSelectedRow()
                    )
        
    }
    
    // ["name": "getToPickerSelectedRow", "returnSignature": " ->Int", "fullyQualifiedName": "getToPickerSelectedRow() ->Int", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Int", "isOptional": false, "stubFunction": "Cuckoo.ClassStubFunction"]
     override func getToPickerSelectedRow()  ->Int {
        
            return cuckoo_manager.call("getToPickerSelectedRow() ->Int",
                parameters: (),
                superclassCall:
                    
                    super.getToPickerSelectedRow()
                    )
        
    }
    

	struct __StubbingProxy_MainPresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var mainInteractor: Cuckoo.ClassToBeStubbedProperty<MockMainPresenter, MainInteractor?> {
	        return .init(manager: cuckoo_manager, name: "mainInteractor")
	    }
	    
	    
	    func onViewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "onViewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func addDigit<M1: Cuckoo.Matchable>(_ digit: M1) -> Cuckoo.ClassStubNoReturnFunction<(Character)> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: digit) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "addDigit(_: Character)", parameterMatchers: matchers))
	    }
	    
	    func deleteDigit() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "deleteDigit()", parameterMatchers: matchers))
	    }
	    
	    func clearCache() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "clearCache()", parameterMatchers: matchers))
	    }
	    
	    func convertAndDisplay() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "convertAndDisplay()", parameterMatchers: matchers))
	    }
	    
	    func setCurrenciesList() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "setCurrenciesList()", parameterMatchers: matchers))
	    }
	    
	    func getCurrenciesList() -> Cuckoo.ClassStubFunction<(), [String]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "getCurrenciesList() ->[String]", parameterMatchers: matchers))
	    }
	    
	    func setInputAmount<M1: Cuckoo.Matchable>(inputValueInCents: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: inputValueInCents) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "setInputAmount(inputValueInCents: String)", parameterMatchers: matchers))
	    }
	    
	    func setOutputAmount<M1: Cuckoo.Matchable>(outputValueInCents: M1) -> Cuckoo.ClassStubNoReturnFunction<(Float)> where M1.MatchedType == Float {
	        let matchers: [Cuckoo.ParameterMatcher<(Float)>] = [wrap(matchable: outputValueInCents) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "setOutputAmount(outputValueInCents: Float)", parameterMatchers: matchers))
	    }
	    
	    func setInfoText<M1: Cuckoo.Matchable>(info: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: info) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "setInfoText(info: String)", parameterMatchers: matchers))
	    }
	    
	    func getFromPickerSelectedRow() -> Cuckoo.ClassStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "getFromPickerSelectedRow() ->Int", parameterMatchers: matchers))
	    }
	    
	    func getToPickerSelectedRow() -> Cuckoo.ClassStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainPresenter.self, method: "getToPickerSelectedRow() ->Int", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_MainPresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var mainInteractor: Cuckoo.VerifyProperty<MainInteractor?> {
	        return .init(manager: cuckoo_manager, name: "mainInteractor", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func onViewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onViewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func addDigit<M1: Cuckoo.Matchable>(_ digit: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Character {
	        let matchers: [Cuckoo.ParameterMatcher<(Character)>] = [wrap(matchable: digit) { $0 }]
	        return cuckoo_manager.verify("addDigit(_: Character)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func deleteDigit() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("deleteDigit()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func clearCache() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("clearCache()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func convertAndDisplay() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("convertAndDisplay()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setCurrenciesList() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setCurrenciesList()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getCurrenciesList() -> Cuckoo.__DoNotUse<[String]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getCurrenciesList() ->[String]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setInputAmount<M1: Cuckoo.Matchable>(inputValueInCents: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: inputValueInCents) { $0 }]
	        return cuckoo_manager.verify("setInputAmount(inputValueInCents: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setOutputAmount<M1: Cuckoo.Matchable>(outputValueInCents: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Float {
	        let matchers: [Cuckoo.ParameterMatcher<(Float)>] = [wrap(matchable: outputValueInCents) { $0 }]
	        return cuckoo_manager.verify("setOutputAmount(outputValueInCents: Float)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setInfoText<M1: Cuckoo.Matchable>(info: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: info) { $0 }]
	        return cuckoo_manager.verify("setInfoText(info: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getFromPickerSelectedRow() -> Cuckoo.__DoNotUse<Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getFromPickerSelectedRow() ->Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getToPickerSelectedRow() -> Cuckoo.__DoNotUse<Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getToPickerSelectedRow() ->Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class MainPresenterStub: MainPresenter {
    
     override var mainInteractor: MainInteractor! {
        get {
            return DefaultValueRegistry.defaultValue(for: (MainInteractor!).self)
        }
        
        set { }
        
    }
    

    

    
     override func onViewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func addDigit(_ digit: Character)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func deleteDigit()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func clearCache()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func convertAndDisplay()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setCurrenciesList()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getCurrenciesList()  ->[String] {
        return DefaultValueRegistry.defaultValue(for: [String].self)
    }
    
     override func setInputAmount(inputValueInCents: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setOutputAmount(outputValueInCents: Float)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setInfoText(info: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getFromPickerSelectedRow()  ->Int {
        return DefaultValueRegistry.defaultValue(for: Int.self)
    }
    
     override func getToPickerSelectedRow()  ->Int {
        return DefaultValueRegistry.defaultValue(for: Int.self)
    }
    
}


// MARK: - Mocks generated from file: CurrencyConverter/View/MainView.swift at 2018-05-01 15:30:23 +0000

//
//  ViewController.swift
//  Currency Converter
//
//  Created by Alvin Fong on 2018-04-24.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//

import Cuckoo
@testable import Currency_Converter

import UIKit

class MockMainView: MainView, Cuckoo.ClassMock {
    typealias MocksType = MainView
    typealias Stubbing = __StubbingProxy_MainView
    typealias Verification = __VerificationProxy_MainView
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "inputAmountLabel", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UILabel!", "isReadOnly": false, "accessibility": ""]
     override var inputAmountLabel: UILabel! {
        get {
            
            return cuckoo_manager.getter("inputAmountLabel", superclassCall: super.inputAmountLabel)
            
        }
        
        set {
            
            cuckoo_manager.setter("inputAmountLabel", value: newValue, superclassCall: super.inputAmountLabel = newValue)
            
        }
        
    }
    
    // ["name": "outputAmountLabel", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UILabel!", "isReadOnly": false, "accessibility": ""]
     override var outputAmountLabel: UILabel! {
        get {
            
            return cuckoo_manager.getter("outputAmountLabel", superclassCall: super.outputAmountLabel)
            
        }
        
        set {
            
            cuckoo_manager.setter("outputAmountLabel", value: newValue, superclassCall: super.outputAmountLabel = newValue)
            
        }
        
    }
    
    // ["name": "fromCurrencyPicker", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UIPickerView!", "isReadOnly": false, "accessibility": ""]
     override var fromCurrencyPicker: UIPickerView! {
        get {
            
            return cuckoo_manager.getter("fromCurrencyPicker", superclassCall: super.fromCurrencyPicker)
            
        }
        
        set {
            
            cuckoo_manager.setter("fromCurrencyPicker", value: newValue, superclassCall: super.fromCurrencyPicker = newValue)
            
        }
        
    }
    
    // ["name": "toCurrencyPicker", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UIPickerView!", "isReadOnly": false, "accessibility": ""]
     override var toCurrencyPicker: UIPickerView! {
        get {
            
            return cuckoo_manager.getter("toCurrencyPicker", superclassCall: super.toCurrencyPicker)
            
        }
        
        set {
            
            cuckoo_manager.setter("toCurrencyPicker", value: newValue, superclassCall: super.toCurrencyPicker = newValue)
            
        }
        
    }
    
    // ["name": "infoTextLabel", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "UILabel!", "isReadOnly": false, "accessibility": ""]
     override var infoTextLabel: UILabel! {
        get {
            
            return cuckoo_manager.getter("infoTextLabel", superclassCall: super.infoTextLabel)
            
        }
        
        set {
            
            cuckoo_manager.setter("infoTextLabel", value: newValue, superclassCall: super.infoTextLabel = newValue)
            
        }
        
    }
    
    // ["name": "mainPresenter", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "MainPresenter!", "isReadOnly": false, "accessibility": ""]
     override var mainPresenter: MainPresenter! {
        get {
            
            return cuckoo_manager.getter("mainPresenter", superclassCall: super.mainPresenter)
            
        }
        
        set {
            
            cuckoo_manager.setter("mainPresenter", value: newValue, superclassCall: super.mainPresenter = newValue)
            
        }
        
    }
    

    

    
    // ["name": "viewDidLoad", "returnSignature": "", "fullyQualifiedName": "viewDidLoad()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                superclassCall:
                    
                    super.viewDidLoad()
                    )
        
    }
    
    // ["name": "onInputButtonPressed", "returnSignature": "", "fullyQualifiedName": "onInputButtonPressed(_: UIButton)", "parameterSignature": "_ sender: UIButton", "parameterSignatureWithoutNames": "sender: UIButton", "inputTypes": "UIButton", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "sender", "call": "sender", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "sender", type: "UIButton", range: CountableRange(709..<727), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func onInputButtonPressed(_ sender: UIButton)  {
        
            return cuckoo_manager.call("onInputButtonPressed(_: UIButton)",
                parameters: (sender),
                superclassCall:
                    
                    super.onInputButtonPressed(sender)
                    )
        
    }
    
    // ["name": "onClearCacheButtonPressed", "returnSignature": "", "fullyQualifiedName": "onClearCacheButtonPressed(_: Any)", "parameterSignature": "_ sender: Any", "parameterSignatureWithoutNames": "sender: Any", "inputTypes": "Any", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "sender", "call": "sender", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "sender", type: "Any", range: CountableRange(1647..<1660), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func onClearCacheButtonPressed(_ sender: Any)  {
        
            return cuckoo_manager.call("onClearCacheButtonPressed(_: Any)",
                parameters: (sender),
                superclassCall:
                    
                    super.onClearCacheButtonPressed(sender)
                    )
        
    }
    
    // ["name": "setInputLabel", "returnSignature": "", "fullyQualifiedName": "setInputLabel(_: String)", "parameterSignature": "_ text: String", "parameterSignatureWithoutNames": "text: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "text", "call": "text", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "text", type: "String", range: CountableRange(1733..<1746), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setInputLabel(_ text: String)  {
        
            return cuckoo_manager.call("setInputLabel(_: String)",
                parameters: (text),
                superclassCall:
                    
                    super.setInputLabel(text)
                    )
        
    }
    
    // ["name": "setOuputLabel", "returnSignature": "", "fullyQualifiedName": "setOuputLabel(_: String)", "parameterSignature": "_ text: String", "parameterSignatureWithoutNames": "text: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "text", "call": "text", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "text", type: "String", range: CountableRange(1816..<1829), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setOuputLabel(_ text: String)  {
        
            return cuckoo_manager.call("setOuputLabel(_: String)",
                parameters: (text),
                superclassCall:
                    
                    super.setOuputLabel(text)
                    )
        
    }
    
    // ["name": "setInfoLabel", "returnSignature": "", "fullyQualifiedName": "setInfoLabel(_: String)", "parameterSignature": "_ text: String", "parameterSignatureWithoutNames": "text: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "text", "call": "text", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "text", type: "String", range: CountableRange(1903..<1916), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setInfoLabel(_ text: String)  {
        
            return cuckoo_manager.call("setInfoLabel(_: String)",
                parameters: (text),
                superclassCall:
                    
                    super.setInfoLabel(text)
                    )
        
    }
    
    // ["name": "getFromPickerSelectedRow", "returnSignature": " ->Int", "fullyQualifiedName": "getFromPickerSelectedRow() ->Int", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Int", "isOptional": false, "stubFunction": "Cuckoo.ClassStubFunction"]
     override func getFromPickerSelectedRow()  ->Int {
        
            return cuckoo_manager.call("getFromPickerSelectedRow() ->Int",
                parameters: (),
                superclassCall:
                    
                    super.getFromPickerSelectedRow()
                    )
        
    }
    
    // ["name": "getToPickerSelectedRow", "returnSignature": " ->Int", "fullyQualifiedName": "getToPickerSelectedRow() ->Int", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Int", "isOptional": false, "stubFunction": "Cuckoo.ClassStubFunction"]
     override func getToPickerSelectedRow()  ->Int {
        
            return cuckoo_manager.call("getToPickerSelectedRow() ->Int",
                parameters: (),
                superclassCall:
                    
                    super.getToPickerSelectedRow()
                    )
        
    }
    
    // ["name": "initUIPickers", "returnSignature": "", "fullyQualifiedName": "initUIPickers()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func initUIPickers()  {
        
            return cuckoo_manager.call("initUIPickers()",
                parameters: (),
                superclassCall:
                    
                    super.initUIPickers()
                    )
        
    }
    

	struct __StubbingProxy_MainView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var inputAmountLabel: Cuckoo.ClassToBeStubbedProperty<MockMainView, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "inputAmountLabel")
	    }
	    
	    var outputAmountLabel: Cuckoo.ClassToBeStubbedProperty<MockMainView, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "outputAmountLabel")
	    }
	    
	    var fromCurrencyPicker: Cuckoo.ClassToBeStubbedProperty<MockMainView, UIPickerView?> {
	        return .init(manager: cuckoo_manager, name: "fromCurrencyPicker")
	    }
	    
	    var toCurrencyPicker: Cuckoo.ClassToBeStubbedProperty<MockMainView, UIPickerView?> {
	        return .init(manager: cuckoo_manager, name: "toCurrencyPicker")
	    }
	    
	    var infoTextLabel: Cuckoo.ClassToBeStubbedProperty<MockMainView, UILabel?> {
	        return .init(manager: cuckoo_manager, name: "infoTextLabel")
	    }
	    
	    var mainPresenter: Cuckoo.ClassToBeStubbedProperty<MockMainView, MainPresenter?> {
	        return .init(manager: cuckoo_manager, name: "mainPresenter")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func onInputButtonPressed<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.ClassStubNoReturnFunction<(UIButton)> where M1.MatchedType == UIButton {
	        let matchers: [Cuckoo.ParameterMatcher<(UIButton)>] = [wrap(matchable: sender) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "onInputButtonPressed(_: UIButton)", parameterMatchers: matchers))
	    }
	    
	    func onClearCacheButtonPressed<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.ClassStubNoReturnFunction<(Any)> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "onClearCacheButtonPressed(_: Any)", parameterMatchers: matchers))
	    }
	    
	    func setInputLabel<M1: Cuckoo.Matchable>(_ text: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: text) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "setInputLabel(_: String)", parameterMatchers: matchers))
	    }
	    
	    func setOuputLabel<M1: Cuckoo.Matchable>(_ text: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: text) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "setOuputLabel(_: String)", parameterMatchers: matchers))
	    }
	    
	    func setInfoLabel<M1: Cuckoo.Matchable>(_ text: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: text) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "setInfoLabel(_: String)", parameterMatchers: matchers))
	    }
	    
	    func getFromPickerSelectedRow() -> Cuckoo.ClassStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "getFromPickerSelectedRow() ->Int", parameterMatchers: matchers))
	    }
	    
	    func getToPickerSelectedRow() -> Cuckoo.ClassStubFunction<(), Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "getToPickerSelectedRow() ->Int", parameterMatchers: matchers))
	    }
	    
	    func initUIPickers() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMainView.self, method: "initUIPickers()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_MainView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var inputAmountLabel: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "inputAmountLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var outputAmountLabel: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "outputAmountLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var fromCurrencyPicker: Cuckoo.VerifyProperty<UIPickerView?> {
	        return .init(manager: cuckoo_manager, name: "fromCurrencyPicker", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var toCurrencyPicker: Cuckoo.VerifyProperty<UIPickerView?> {
	        return .init(manager: cuckoo_manager, name: "toCurrencyPicker", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var infoTextLabel: Cuckoo.VerifyProperty<UILabel?> {
	        return .init(manager: cuckoo_manager, name: "infoTextLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var mainPresenter: Cuckoo.VerifyProperty<MainPresenter?> {
	        return .init(manager: cuckoo_manager, name: "mainPresenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onInputButtonPressed<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIButton {
	        let matchers: [Cuckoo.ParameterMatcher<(UIButton)>] = [wrap(matchable: sender) { $0 }]
	        return cuckoo_manager.verify("onInputButtonPressed(_: UIButton)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onClearCacheButtonPressed<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(Any)>] = [wrap(matchable: sender) { $0 }]
	        return cuckoo_manager.verify("onClearCacheButtonPressed(_: Any)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setInputLabel<M1: Cuckoo.Matchable>(_ text: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: text) { $0 }]
	        return cuckoo_manager.verify("setInputLabel(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setOuputLabel<M1: Cuckoo.Matchable>(_ text: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: text) { $0 }]
	        return cuckoo_manager.verify("setOuputLabel(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setInfoLabel<M1: Cuckoo.Matchable>(_ text: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: text) { $0 }]
	        return cuckoo_manager.verify("setInfoLabel(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getFromPickerSelectedRow() -> Cuckoo.__DoNotUse<Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getFromPickerSelectedRow() ->Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getToPickerSelectedRow() -> Cuckoo.__DoNotUse<Int> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getToPickerSelectedRow() ->Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func initUIPickers() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("initUIPickers()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class MainViewStub: MainView {
    
     override var inputAmountLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel!).self)
        }
        
        set { }
        
    }
    
     override var outputAmountLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel!).self)
        }
        
        set { }
        
    }
    
     override var fromCurrencyPicker: UIPickerView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIPickerView!).self)
        }
        
        set { }
        
    }
    
     override var toCurrencyPicker: UIPickerView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIPickerView!).self)
        }
        
        set { }
        
    }
    
     override var infoTextLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel!).self)
        }
        
        set { }
        
    }
    
     override var mainPresenter: MainPresenter! {
        get {
            return DefaultValueRegistry.defaultValue(for: (MainPresenter!).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func onInputButtonPressed(_ sender: UIButton)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func onClearCacheButtonPressed(_ sender: Any)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setInputLabel(_ text: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setOuputLabel(_ text: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func setInfoLabel(_ text: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func getFromPickerSelectedRow()  ->Int {
        return DefaultValueRegistry.defaultValue(for: Int.self)
    }
    
     override func getToPickerSelectedRow()  ->Int {
        return DefaultValueRegistry.defaultValue(for: Int.self)
    }
    
     override func initUIPickers()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

