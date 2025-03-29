//
//  RowView.swift
//  DogBreed
//
//  Created by Abigail Armijo Hernández on 14/12/24.
//

import SwiftUI

struct RowView: View {
    var breedData: BreedData
    var body: some View {
        HStack {
            Image(breedData.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
                .clipShape(RoundedCorner(radius: 10, corners: [.topLeft, .topRight, .bottomLeft, .bottomRight]))
                .padding(2)
            
            VStack (alignment: .leading, spacing: 4) {
                Text(breedData.breed)
                    .font(.system(size: 22))
                    .foregroundColor(Color.blue)
                    .fontWeight(.bold)
                
                Text(breedData.description)
                    .lineLimit(3)
                    .foregroundColor(Color.blue)
                    .lineSpacing(2)
                    .frame(height: 70)
                    .font(.system(size: 18))
            }.frame(height: 80)
        }
    }
}

#Preview {
    RowView(breedData: breeds[2])
}
