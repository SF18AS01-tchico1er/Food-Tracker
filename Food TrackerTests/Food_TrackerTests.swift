//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by TIEGO Ouedraogo on 1/29/19.
//  Copyright © 2019 TIEGO Ouedraogo. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    
    //MARK: Meal Class Test
    
    //Confirm that the Meal Initializer return object when passed valid parameters
    
    func testMealInitializerSucceeda() {
        
        // zero rating
        let zeroRatingMeal = Meal.init(name:"zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //highest positive rating
        let positiveRatingMeal = Meal.init(name:"Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func  testMealInitilizationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name:"negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        //Rating Exceed Max
        
        let largetringRatingMeal = Meal.init(name:"large", photo: nil, rating: 6)
        XCTAssertNil(largetringRatingMeal)
        
        //Empty String
        let emptyStringRatingMeal = Meal.init(name:"emptyString", photo: nil, rating: 0)
        XCTAssertNil(emptyStringRatingMeal)
        
    }

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
