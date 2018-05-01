import XCTest
import Cuckoo
@testable import Currency_Converter

/**
 * This test coverage is incomplete- I've been having trouble having
 * cuckoo mock the Realm Wrapper (the stubbingProxy keep on thinking it
 * doesn't have member methods.
 * TODO: complete MainInteractor coverage
 */
class MainInteractorTest: XCTestCase {
    var interactorUnderTest:MainInteractor!
    
    var mockView:MockMainView!
    var mockPresenter:MockMainPresenter!
    var mockRealmWrapper : MockRealmWrapper!
    var mockAlamo : MockAlamoWrapper!
    
    override func setUp() {
        super.setUp()
        mockView = MockMainView()
        mockPresenter = MockMainPresenter(mockView)
        mockRealmWrapper = MockRealmWrapper()
        interactorUnderTest = MainInteractor(mockPresenter)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddDigit_tooMany() {
        let info:String = "We support up to 999,999,999,999.99";
        stub(mockPresenter) { stub in
            when(stub.setInfoText(info: info)).thenDoNothing()
        }
        interactorUnderTest.inputValueInCents = "12345678901234"
        
        interactorUnderTest.addDigit("0")
        
        verify(mockPresenter).setInfoText(info:info)
    }
    
    func testAddDigit() {
        stub(mockPresenter) { stub in
            when(stub.setInputAmount(inputValueInCents: "1"))
                .thenDoNothing()
        }
        interactorUnderTest.inputValueInCents = ""
        
        interactorUnderTest.addDigit("1")
        
        verify(mockPresenter).setInputAmount(
            inputValueInCents:"1")
    }
    
    func testDeleteDigit() {
        stub(mockPresenter) { stub in
            when(stub.setInputAmount(inputValueInCents: "1231231")).thenDoNothing()
        }
        interactorUnderTest.inputValueInCents = "12312312"
        
        interactorUnderTest.deleteDigit()
        
        verify(mockPresenter).setInputAmount(
            inputValueInCents:"1231231")
    }
    
    class MockRealmListener2:RealmWrapper{
        
        var hasCalled = false;
        override func getRateFromRealm(baseCurrencySymbol:String, targetCurrencySymbol:String, rateListener:GetRealmRateListener){
            if (baseCurrencySymbol == "CAD" &&
                targetCurrencySymbol == "USD"
                ){
                hasCalled = true
            }
        }
    }
    
    func testConvertAndDisplay(){
        let mockRealm = MockRealmListener2();
        let input :String = "CAD"
        let output :String = "USD"
        let fromRow:Int = 0
        stub(mockPresenter) { stub in
            when(stub.getFromPickerSelectedRow()).thenReturn(fromRow)
        }
        let toRow:Int = 1
        stub(mockPresenter) { stub in
            when(stub.getToPickerSelectedRow()).thenReturn(toRow)
        }
        interactorUnderTest.currenciesList.append(input)
        interactorUnderTest.currenciesList.append(output)
        
        stub(mockPresenter) { stub in
            when(stub.setInfoText(info: ""))
                .thenDoNothing()
        }
        let clearFloat:Float = 0.00
        stub(mockPresenter) { stub in
            when(stub.setOutputAmount(outputValueInCents: clearFloat))
                .thenDoNothing()
        }
        interactorUnderTest.inputValueInCents = "12312312"
        
        interactorUnderTest.convertAndDisplay(mockRealm)
        
        XCTAssertTrue(mockRealm.hasCalled)
    }
}
