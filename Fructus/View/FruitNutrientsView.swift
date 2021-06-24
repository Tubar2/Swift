//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Ricardo Santos on 13/06/21.
//

import SwiftUI

struct FruitNutrientsView: View {

    // MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    

    // MARK: - Body
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count) { idx in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[idx])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[idx])
                            .multilineTextAlignment(.trailing)
                    }
                }
            } //: DisclosureGroup
        } //: GroupBox
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
    }
}
