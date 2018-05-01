//
//  MainPresenterTest.swift
//  Currency ConverterTests
//
//  Created by Alvin Fong on 2018-04-30.
//  Copyright © 2018 Alvin Fong. All rights reserved.
//
import Cuckoo
import XCTest

@testable import Currency_Converter

class MainPresenterTest: XCTestCase {
    
    var presenterUnderTest:MainPresenter!
    
    var mockView:MockMainView!
    var mockInteractor:MockMainInteractor!
    
    override func setUp() {
        super.setUp()
        mockView = MockMainView();
        
        presenterUnderTest = MainPresenter(mockView)
        mockInteractor = MockMainInteractor(presenterUnderTest)
        presenterUnderTest.mainInteractor = mockInteractor
    }
    
    func testOnViewDidLoad(){
        stub(mockInteractor) { stub in
            when(stub.onViewDidLoad()).thenDoNothing()
        }
        
        presenterUnderTest.onViewDidLoad()
        
        verify(mockInteractor).onViewDidLoad();
    }
    
    func testAddDigit(){
        
        stub(mockView) { stub in
            when(stub.setOuputLabel(""))
                .thenDoNothing()
        }
        let char:Character = "2"
        stub(mockInteractor) { stub in
            when(stub.addDigit(char)).thenDoNothing()
        }
        
        presenterUnderTest.addDigit(char)
        
        verify(mockView).setOuputLabel("");
        verify(mockInteractor).addDigit(char);
    }
    
    func testDeleteDigit(){
        stub(mockInteractor) { stub in
            when(stub.deleteDigit()).thenDoNothing()
        }
        
        presenterUnderTest.deleteDigit()
        
        verify(mockInteractor).deleteDigit();
    }
    
    func testClearCache(){
        stub(mockInteractor) { stub in
            when(stub.clearCache(any(RealmWrapper.self))).thenDoNothing()
        }
        
        presenterUnderTest.clearCache()
        
        verify(mockInteractor).clearCache(any(RealmWrapper.self));
    }
    
    func testConvertAndDisplay(){
        stub(mockInteractor) { stub in
            when(stub.convertAndDisplay(any(RealmWrapper.self))).thenDoNothing()
        }
        
        presenterUnderTest.convertAndDisplay()
        
        verify(mockInteractor).convertAndDisplay(any(RealmWrapper.self));
    }
    
    func testSetCurrenciesList(){
        stub(mockView) { stub in
            when(stub.initUIPickers())
                .thenDoNothing()
        }
        
        presenterUnderTest.setCurrenciesList()
        
        verify(mockView).initUIPickers();
    }
    
    func testGetCurrenciesList(){
        var array: [String] = [String]()
        array.append("MIU")
        array.append("MIZ")
        stub(mockInteractor) { stub in
            when(stub.currenciesList.get).thenReturn(array)
            when(stub.currenciesList.set(any())).then {print($0)}
        }
        
        let result = presenterUnderTest.getCurrenciesList()
        
        XCTAssertEqual(array, result)
    }

    func testSetInfoText(){
        let info:String = "info"
        
        stub(mockView) { stub in
            when(stub.setInfoLabel(info)).thenDoNothing()
        }
        
        presenterUnderTest.setInfoText(info: info)
        
        verify(mockView).setInfoLabel(info);
    }

    func testGetFromPickerSelectedRow(){
        
        let row:Int = 3
        
        stub(mockView) { stub in
            when(stub.getFromPickerSelectedRow()).thenReturn(row)
        }
        
        let result = presenterUnderTest.getFromPickerSelectedRow()
        
        verify(mockView).getFromPickerSelectedRow();
        XCTAssertEqual(row, result)
    }

    func testGetToPickerSelectedRow(){
        
        let row:Int = 6
        
        stub(mockView) { stub in
            when(stub.getToPickerSelectedRow()).thenReturn(row)
        }
        
        let result = presenterUnderTest.getToPickerSelectedRow()
        
        verify(mockView).getToPickerSelectedRow();
        XCTAssertEqual(row, result)
    }
}
