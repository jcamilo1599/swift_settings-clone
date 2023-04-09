//
//  SectionItem.swift
//  SettingsClone
//
//  Created by Juan Camilo Marín Ochoa on 8/04/23.
//

import SwiftUI

struct SectionItem: View {
    let image: String
    let label: String
    let color: Color
    let weight: Font.Weight
    
    init(image: String, label: String, color: Color, weight: Font.Weight = .bold) {
        self.image = image
        self.label = label
        self.color = color
        self.weight = weight
    }
    
    var body: some View {
        HStack() {
            Image(systemName: image)
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
                .font(Font.system(size: 14, weight: weight))
                .padding(.all, 4)
                .background(color)
                .cornerRadius(4)
                .padding(.trailing, 8)
            
            Text(label)
        }
    }
}

struct SectionItem_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SectionItem(
                image: "wifi",
                label: "Bluetooth",
                color: .blue
            )
            
            SectionItem(
                image: "antenna.radiowaves.left.and.right",
                label: "Red celular",
                color: .green,
                weight: .bold
            )
        }
    }
}
