//
//  RegistrationAPITest.swift
//  PixelgramTests
//
//  Created by Sevag Gaprielian on 2022-08-25.
//

import XCTest
@testable import Pixelgram

class RegistationAPITest: XCTestCase {
    var httpClient = MockAlamoManager.shared
    var viewModel : RegistrationViewModel!
    
    override func setUp() async throws {
        httpClient = MockAlamoManager.shared
        viewModel = .init(alamoManager: httpClient)

    }
    
    func testSuccessfullRegistration() {
        let username = "test_new"
        let password = "test12345"
        
        httpClient.data = MockRegistrationData().mockRegistationData_200()
        httpClient.status = 200
        viewModel.register(username: username, password: password, completionHandler: { [self]  status, message in
          
            XCTAssertTrue(viewModel.successfullRegistation && status == 200)
            
        })
    }
    
    func testUnseccessfullRegistration() {
        let username = "test_new"
        let password = "test12345"
        
        httpClient.data = MockRegistrationData().mockRegistrationData_400()
        httpClient.status = 400
        viewModel.register(username: username, password: password, completionHandler: { [self] status, message in
            
            XCTAssertFalse(viewModel.successfullRegistation && status == 400)
            
        })
    }
    
    func testInputValidation_areInputsSame_AssertTrue() {
        XCTAssertTrue(InputValidation.areInputsSame(inputs: ["Password"]))
        XCTAssertTrue(InputValidation.areInputsSame(inputs: ["Password", "Password"]))
    }
    
    //Case: Inputs in the secure fields "Enter Password" and "Confirm Password" don't match.
    func testInputValidation_areInputsSame_AssertFalse() {
        XCTAssertFalse(InputValidation.areInputsSame(inputs: ["Password1", "Password2"]))
    }
    
    //Case: Input in any text field or secure field is empty.
    func testInputValidation_isFieldEmptyOrBlank_AssertTrue() {
        XCTAssertTrue(InputValidation.isFieldEmptyOrBlank(input: ""))
        XCTAssertTrue(InputValidation.isFieldEmptyOrBlank(input: "   "))
    }
    
    //Case: Input in any text field or secure field is NOT empty.
    func testInputValidation_isFieldEmptyOrBlank_AssertFalse() {
        XCTAssertFalse(InputValidation.isFieldEmptyOrBlank(input: "username"))
    }
}

