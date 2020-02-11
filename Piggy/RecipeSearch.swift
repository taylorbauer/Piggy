//
//  RecipeSearch.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/24/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

//  This is where the user can look up recipes.
//  It is called on by MainMenu

import SwiftUI

struct RecipeSearch: View {
    let recipes = Bundle.main.decode([Recipe].self, from: "recipes.json")
    var body: some View {
        VStack {
            Text("Currently Stored Recipes")
                .padding()
                .font(.headline)
            ForEach(recipes) { recipe in
                VStack(alignment: .leading) {
                    HStack {
                        Text(recipe.name)
                            .bold()
                            .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .padding()
                        Spacer()
                        Text(recipe.glass)
                        Spacer()
                        Text(recipe.method)
                            .padding()
                        
                    }
                    VStack {
                        ForEach(0 ..< recipe.ingredientCount) { ingredient in
                            HStack {
                                Text(recipe.ingredients[ingredient][0])
                                Text(recipe.ingredients[ingredient][1])
                                    .bold()
                                Spacer()
                            }
                            .padding(.leading)
                        }
                        HStack {
                            Text(recipe.garnish)
                                .italic()
                                .padding(.leading)
                            Spacer()
                        }
                    }
                }
            }
            .padding(.bottom)
            
        }
    }
}

struct RecipeSearch_Previews: PreviewProvider {
    static var previews: some View {
        RecipeSearch()
    }
}
