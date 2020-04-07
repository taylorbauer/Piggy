//
//  Ingredient.swift
//  Piggy
//
//  Created by Taylor Bauer on 3/4/20.
//  Copyright © 2020 Group 6. All rights reserved.
//
//  This is used by all of the recipe views to store the names and
//  qantities of ingredients.
//

import SwiftUI

struct Ingredient: Identifiable {
    var id: UUID
    var quantity: String
    var ingredientName: String
    init () {
        id = UUID()
        quantity = "Quantity"
        ingredientName = "Ingredient"
    }
}

//struct Ingredient_Previews: PreviewProvider {
//    static var previews: some View {
//        Ingredient()
//    }
//}
