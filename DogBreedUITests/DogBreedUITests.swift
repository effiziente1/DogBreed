//
//  DogBreedUITests.swift
//  DogBreedUITests
//
//  Created by Abigail Armijo Hernández on 30/11/24.
//

import XCTest

final class DogBreedUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    func testNavigateToBreedInfo() throws {  
        XCTContext.runActivity(named: "Navigate to Boykin Spaniel breed info and verify title") { _ in
            let app = XCUIApplication()
            app.launch()
            let breed = "Boykin Spaniel"
            XCTContext.runActivity(named: "Tap in the dog breed '\(breed)'") { _ in
                app.collectionViews["dog_breeds_title"].buttons[breed].tap()
            }
            let assert = "Title is '\(breed)'"
            XCTContext.runActivity(named: assert) { _ in
                XCTAssertEqual(app.staticTexts["title"].label, breed, assert)
            }
            app.navigationBars["Boykin Spaniel"].buttons["Back"].tap()
        }
    }

}
