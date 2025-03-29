//
//  AccessibilityID.swift
//  DogBreed
//
//  Created by Abigail Armijo Hernández on 29/03/25.
//

enum AccessibilityID {
    enum DogBreeds {
        static let navigationView = "dog_breeds_nav_view"
        static let listView = "dog_breeds_list"
        static let navigationTitle = "dog_breeds_title"
        
        static func breedRow(_ name: String) -> String {
            return "breed_row_\(name.lowercased().replacingOccurrences(of: " ", with: "_"))"
        }
    }
    
    enum DetailView {
        static let detailView = "breed_detail_view"
        static let breedImage = "breed_detail_image"
        static let breedTitle = "breed_detail_title"
        static let breedDescription = "breed_detail_description"
        static let navigationBar = "breed_detail_nav_bar"
        static let backButton = "breed_detail_back_button"
    }
}
