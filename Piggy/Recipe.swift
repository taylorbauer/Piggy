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
}
