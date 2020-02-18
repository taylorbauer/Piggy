//
//  NewRecipe.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/24/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

// This is where the user will create new recipes
// As of right now, it is called on by MainMenu

import SwiftUI

struct NewRecipe: View {
    @State private var newCocktail: Recipe!
    @State private var tempName: String = "Cocktail Name"
    @State private var tempMethod: String = "Shaken/Stirred?"
    @State private var tempGlass: String = "Rocks, Coupe, etc."
    @State private var tempGarnish: String = "Peel? Zest? Cherry?"
    @State private var tempIngredient1: String = "Ingredient 1"
    @State private var tempIngredient2: String = "Ingredient 2"
    @State private var tempIngredient3: String = "Ingredient 3"
    @State private var tempIngredient4: String = "Ingredient 4"
    var body: some View {
        VStack(alignment: .leading) {
            Text("Create New Recipe")
                .font(.title)
                .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                .padding()
            VStack(alignment: .leading) {
                Text("Cocktail Name")
                    .font(.headline)
            
                TextField("Name", text: $tempName)
                    .padding()
                    .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                Text("Method")
                    .font(.headline)
                TextField("Name", text: $tempMethod)
                    .padding()
                    .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                Text("Glass")
                    .font(.headline)
                TextField("Glass", text: $tempGlass)
                    .padding()
                    .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                Text("Garnish")
                    .font(.headline)
                TextField("Garnish", text: $tempGlass)
                    .padding()
                    .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                Text("Ingredients: ")
                    .font(.headline)
                VStack {
                    TextField("Ingredient 1", text: $tempIngredient1)
                        .padding()
                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                    TextField("Ingredient 2", text: $tempIngredient2)
                        .padding()
                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                    TextField("Ingredient 3", text: $tempIngredient3)
                        .padding()
                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                    TextField("Ingredient 4", text: $tempIngredient4)
                        .padding()
                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                    Text("Save new recipe")
                        .fontWeight(.bold)
                        .font(.headline)
                        .padding()
                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0), lineWidth: 5)
                    )
                }
            }
        }
        .padding()
    
    }
}

struct NewRecipe_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipe()
    }
}
