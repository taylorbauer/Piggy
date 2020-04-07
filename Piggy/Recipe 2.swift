//
//  Recipe.swift
//  Piggy
//
//  Created by Taylor Bauer on 2/10/20.
//  Copyright © 2020 Group 6. All rights reserved.
//
//  This is simply the class that contains all the data of a
//  recipe, it currently pulls data from recipes.json, to be
//  attached to a larger database later.
//


import SwiftUI

struct Recipe: Codable, Identifiable {
    var id: UUID
    var name: String
    var method: String
    var glass: String
    var ingredientCount: Int
    var ingredients: [[String]]
    var garnish: String
    init() {
        self.id = UUID(uuidString: "ff53fbdf-e96c-40be-a214-eb522900e251")!
        self.name = "DEFAULT COCKTAIL"
        self.method = "DEFAULT METHOD"
        self.glass = "DEFAULT GLASS"
        self.ingredientCount = 0
        self.ingredients = [[]]
        self.garnish = "DEFAULT GARNISH"
    }
}
