//
//  DogBreedTests.swift
//  DogBreedTests
//
//  Created by Abigail Armijo Hernández on 30/11/24.
//

import Testing
import SwiftUI

@testable import DogBreed

extension Tag {
    @Tag static var detailView: Self
}

@Suite(.tags(.detailView))
struct DetailViewTests {

    let testBreedData = BreedData(breed: "Brittany", imageName: "brittany",  breedPopularity: "Ranks 26 of 193", group: "Sporting Group", description: "Friendly and outgoing", height: "17.5-20.5 inches", weight: "30-40 pounds", lifeExpectancy: "12-14 years")

    @Test("DisplayDataLabels shows correct text")
    func testDisplayDataLabels() {
        let testLabel = "Test Label"
        let labelView = DisplayDataLabels(label: testLabel)
        
        #expect(labelView.label == testLabel)
    }

    @Test("DetailView initializes with correct breed data")
    func testDetailViewDataInitialization() throws {
        let detailView = DetailView(dogBreedData: testBreedData)
        
        #expect(detailView.dogBreedData.breed == testBreedData.breed, "DetailView breed is initialized correctly")
        #expect(detailView.dogBreedData.imageName == testBreedData.imageName, "DetailView image name is initialized correctly")
        #expect(detailView.dogBreedData.description == testBreedData.description, "DetailView description is initialized correctly")
    }
}
