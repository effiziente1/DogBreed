//
//  ListView.swift
//  DogBreed
//
//  Created by Abigail Armijo Hernández on 14/12/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(breeds) { breed in
                NavigationLink(destination: DetailView(dogBreedData: breed)) {
                    RowView(breedData: breed)
                }
                .accessibilityIdentifier(breed.breed)
                .listRowInsets(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .listRowSeparator(.visible)
            }
            .accessibilityIdentifier(AccessibilityID.DogBreeds.listView)
            .listStyle(PlainListStyle())
            .toolbar {
                            ToolbarItem(placement: .principal) {
                                Text("Dog Breeds")
                                    .font(.title.bold())
                            }
                        }
                        .navigationBarTitleDisplayMode(.inline)            
                        .accessibilityIdentifier(AccessibilityID.DogBreeds.navigationTitle)
            .padding(0)
        }
        .accessibilityIdentifier(AccessibilityID.DogBreeds.navigationView)
    }
}
#Preview {
    ListView()
}
