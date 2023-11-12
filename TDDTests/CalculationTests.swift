//
//  CalculationTests.swift
//  TDDTests
//
//  Created by Yapı Kredi Teknoloji A.Ş. on 12.11.2023.
//

import XCTest
@testable import TDD

final class CalculationTests: XCTestCase {

    func testSuccessfulTipCalculation(){
        // Given (Arrange)
        let enteredAAmount = 100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enteredAAmount, with: tipSlider)
        
        // Then (Assert)
        XCTAssertEqual(tip, 25)
    }
    
    func testNegativeEnteredAmountTipCalculation(){
        // Given (Arrange)
        let enteredAAmount = -100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enteredAAmount, with: tipSlider)
        
        // Then (Assert)
        XCTAssertNil(tip)
    }
    
    func testNotEqualTipCalculation(){
        // Given (Arrange)
        let enteredAAmount = -100.00
        let tipSlider = 25.0
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enteredAAmount, with: tipSlider)
        
        // Then (Assert)
        XCTAssertNotEqual(tip, 20)
    }

}
