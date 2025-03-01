//
//  LabelAndIcon.swift
//  DogBreed
//
//  Created by Abigail Armijo Hernández on 30/11/24.
//
import SwiftUI

struct LabelAndIcon: View {
    var body: some View {
        HStack {
            ForEach(iconItems) { item in
                IconButton(label: item.label, icon: item.icon)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(10)
    }
}

struct IconItem: Identifiable {
    var id = UUID()
    var label: String
    var icon: String
}

let iconItems = [
    IconItem(label: "Group", icon: "group"),
    IconItem(label: "Height", icon: "height"),
    IconItem(label: "Weight", icon: "weight"),
    IconItem(label: "Life Span", icon: "lifespan"),
]

struct IconButton: View {
    var label = ""
    var icon = ""
    
    var body: some View {
        VStack {
            Image(icon)
                .renderingMode(.template)
                .foregroundColor(.blue)
                .fontWeight(.light) 
                .frame(width: 32, height:  32)
            Text(label)
                .font(.headline)
                .foregroundColor(.blue)
                .padding(.leading, 10)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .fontWeight(.semibold)
                .frame(maxHeight: 70, alignment: .top)
        }
        .frame(width: 80, height: 40)
        .padding(.top, 20)
        .padding(.bottom, 20)
    }
}

#Preview {
    LabelAndIcon()
}
