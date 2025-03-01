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
        
        GeometryReader { geometry in
            VStack() {
                    ScrollView(.vertical) {
                        Card(dogBreedData: dogBreedData)
                            .frame(maxWidth: 360, alignment: .center)
                            .padding(.horizontal)
                            .frame(maxWidth: .infinity, alignment: .center)
                   }
            }
            .background(Color(white: 0.9))
        }
       
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

struct Card: View {
    var dogBreedData: BreedData
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: .gray, radius: 3, x: 0, y: 2)
            VStack(spacing: 0) {
                Image(dogBreedData.imageName)
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
                Text(dogBreedData.breed)
                    .font(.system(size: 28, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(red: 0.1, green: 0.5, blue: 0.9))
                    .padding(.leading, 20)
                    .padding(.top, 20)
                    
                    .padding(.bottom, 10)
                Divider()
                    .background(Color.blue)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                LabelAndIcon()
                Divider()
                    .background(Color.blue)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                
                Text(dogBreedData.description)
                    .lineLimit(10)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.blue)
                    .padding(.top, 10)
                    .padding(.leading, 20)
                    .padding(.trailing, 10)
                    .padding(.bottom, 10)
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                Divider()
                    .background(Color.blue)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                HStack {
                    LabelsAndIcon().padding(.leading,0)
                    VStack(alignment: .leading) {
                        DisplayDataLabels(label: dogBreedData.group)
                        DisplayDataLabels(label: dogBreedData.height)
                        DisplayDataLabels(label: dogBreedData.weight )
                        DisplayDataLabels(label: dogBreedData.lifeExpectancy)
                        DisplayDataLabels(label: dogBreedData.breedPopularity)
                    }
                }
                
            }
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

struct DisplayDataLabels: View {
    var label = ""
    
    var body: some View {
        VStack {
            Text(label)
                .font(.headline)
                .foregroundColor(Color(red: 0.1, green: 0.5, blue: 0.9))
                .padding(.trailing, 0)
        }
        .padding(15)
    }
}

#Preview {
    DetailView(dogBreedData: breeds[1])
}

