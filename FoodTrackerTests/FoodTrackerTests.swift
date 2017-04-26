//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Mikołaj Skawiński on 09.11.2016.
//  Copyright © 2016 Mikołaj Skawiński. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when paseed valid parameters.
    func testMealInitializationSucceeds() {
        
        // Zero rating
        
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        
        let  postiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(postiveRatingMeal)
    }
    
    // Confirm that Meal initializer returns nil when passed a negative rating or an empty name.
    func testMealInitialization() {
        
        // Negative rating
        
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty name
        
        let  emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
    
}
