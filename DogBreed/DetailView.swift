//
//  ContentView.swift
//  DogBreed
//
//  Created by Abigail Armijo Hernández on 16/11/24.
//

import SwiftUI
import SwiftData

struct DetailView: View {
    var dogBreedData: BreedData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Card(dogBreedData: dogBreedData)
                .padding(.horizontal)
                .padding(.vertical, 20)
        }
        .background(Color(white: 0.9))
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(dogBreedData.breed)
        .accessibilityElement(children: .contain)
        .accessibilityLabel("\(dogBreedData.breed) Details")
        .accessibilityHint("Displays detailed information about \(dogBreedData.breed)")
    }
}

struct Card: View {
    var dogBreedData: BreedData
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .shadow(color: .gray, radius: 3, x: 0, y: 2)
                
                VStack(spacing: 0) {
                    
                    VStack(spacing: 0) {
                        Image(dogBreedData.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxHeight: 250)
                            .clipShape(RoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
                            .accessibilityLabel("\(dogBreedData.breed) image")
                    }
                    .padding(.top, -12)
                    .padding(.horizontal, 0)
                    
                    Text(dogBreedData.breed)
                        .font(.system(size: 28, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(Color(red: 0.1, green: 0.5, blue: 0.9))
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                        .accessibilityAddTraits(.isHeader)
                    
                    Divider()
                        .background(Color.blue)
                        .padding(.horizontal, 20)
                    
                    LabelAndIcon()
                    
                    Divider()
                        .background(Color.blue)
                        .padding(.horizontal, 20)
                    
                    Text(dogBreedData.description)
                        .lineLimit(10)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.blue)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .accessibilityLabel("Breed description: \(dogBreedData.description)")
                    
                    Divider()
                        .background(Color.blue)
                        .padding(.horizontal, 20)
                    
                    HStack {
                        LabelsAndIcon()
                        VStack(alignment: .leading) {
                            DisplayDataLabels(label: dogBreedData.group)
                            DisplayDataLabels(label: dogBreedData.height)
                            DisplayDataLabels(label: dogBreedData.weight)
                            DisplayDataLabels(label: dogBreedData.lifeExpectancy)
                            DisplayDataLabels(label: dogBreedData.breedPopularity)
                        }
                    }
                    .padding(.bottom, 20)
                    .accessibilityElement(children: .combine)
                    .accessibilityLabel("Breed characteristics")
                }
            }
        }
        .frame(maxWidth: 360)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct DisplayDataLabels: View {
    var label: String
    
    var body: some View {
        Text(label)
            .font(.headline)
            .foregroundColor(Color(red: 0.1, green: 0.5, blue: 0.9))
            .padding(15)
            .accessibilityLabel(label)
    }
}

#Preview {
    DetailView(dogBreedData: breeds[2])
}
