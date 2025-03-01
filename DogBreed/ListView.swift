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
            List(breeds) {
                breed in
                NavigationLink(destination: DetailView(dogBreedData: breed)) {
                        RowView(breedData: breed)
                }
                .listRowInsets(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .listRowSeparator(.visible)
                               
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle(Text("Dog Breeds"), displayMode: .large)
            .padding(0)
            
        }
    }
    
}

#Preview {
    ListView()
}
