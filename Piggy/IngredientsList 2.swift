//
//  IngredientsList.swift
//  Piggy
//
//  Created by Taylor Bauer on 3/4/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import SwiftUI

struct IngredientsList: View {
    var count: Int
    
    var body: some View {
        ForEach((1...count), id: \.self) { ingredient in
                IngredientRow(ingredientNum: ingredient)
    }
}
}

struct IngredientsList_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsList(count: 4)
    }
}
