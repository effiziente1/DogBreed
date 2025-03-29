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

    func testExample() throws {  
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.collectionViews["dog_breeds_title"].buttons["breed_row_boykin_spaniel"]/*[[".otherElements[\"dog_breeds_nav_view\"].collectionViews[\"dog_breeds_title\"]",".cells",".buttons[\"Boykin Spaniel, A medium-sized flushing and retrieving dog known for its rich brown coat, the Boykin Spaniel is avid, eager, merry, and trainable. This mellow housedog and tenacious bird dog was once South Carolina’s best-kept secret.\"]",".buttons[\"breed_row_boykin_spaniel\"]",".collectionViews[\"dog_breeds_title\"]"],[[[-1,4,1],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,3],[-1,2]]],[0,0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.navigationBars["Boykin Spaniel"]/*[[".otherElements[\"dog_breeds_nav_view\"].navigationBars[\"Boykin Spaniel\"]",".navigationBars[\"Boykin Spaniel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.buttons["Back"].tap() 
    }


    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
