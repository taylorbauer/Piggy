//
//  IngredientRow.swift
//  Piggy
//
//  Created by Taylor Bauer on 3/4/20.
//  Copyright © 2020 Group 6. All rights reserved.
//
//  These are the rows of textfields that the user will type
//  ingredient names into in NewRecipe
//


import SwiftUI

struct IngredientRow: View {
    var ingredient = Ingredient()
    @State var ingredientNum: Int
    @State var quantity: String = "Quantity"
    @State var ingredientName: String = "Ingredient"
    var body: some View {
        VStack(alignment: .leading){
            Text("Ingredient \(ingredientNum):")
                .bold()
        HStack {
            TextField("Ingredient 2", text: $quantity)
                                    .padding()
                .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
            TextField("Ingredient 2", text: $ingredientName)
                                .padding()
            .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
        }
    }
    }
}

struct IngredientRow_Previews: PreviewProvider {
    static var previews: some View {
        IngredientRow(ingredientNum: 1)
    }
}
