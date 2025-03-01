//
//  LabelsAndIcon.swift
//  DogBreed
//
//  Created by Abigail Armijo Hernández on 22/02/25.
//

import SwiftUI

struct LabelsAndIcon: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(items) { item in
                PositionAndModifier(label: item.label, icon: item.icon)
            }
        }
        .padding(.leading, 0)
    }
}

struct Item: Identifiable {
    var id = UUID()
    var label: String
    var icon: String
}

var items = [
    Item(label: "AKC Group", icon: "group"),
    Item(label: "Height", icon: "height"),
    Item(label: "Weight", icon: "weight"),
    Item(label: "Lifespan", icon: "lifespan"),
    Item(label: "Popularity", icon: "popularity")
]

struct PositionAndModifier: View {
    var label = ""
    var icon = ""
    
    var body: some View {
        HStack {
            Image(icon)
                .renderingMode(.template)
                .foregroundColor(Color(red: 0.1, green: 0.5, blue: 0.9))
                .fontWeight(.light)
                .frame(width: 32, height:  32)
                .padding(0)
            Text(label)
                .font(.headline)
                .foregroundColor(Color(red: 0.1, green: 0.5, blue: 0.9))
                .padding(.leading, 10)
        }.padding(.top,10)
        .padding(.bottom,10)
        .padding(.leading, 0)
        .padding(.trailing, 0)
    }
}

#Preview {
    LabelsAndIcon()
}
