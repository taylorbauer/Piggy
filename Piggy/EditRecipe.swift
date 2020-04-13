//
//  EditRecipe.swift
//  Piggy
//
//  Created by Taylor Bauer on 4/13/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import SwiftUI

struct EditRecipe: View {
    let recipes = Bundle.main.decode([Recipe].self, from: "recipes.json")
        .sorted {
            $0.name < $1.name
    }
    var body: some View {
        NavigationView {
        VStack {

                Text("Choose Recipe to Edit:")
                    .padding()
                    .font(.headline)
            List {

                ForEach(recipes) { recipe in
                    VStack {
                        HStack {
                            NavigationLink(destination: EditRecipeDetails(cocktailBeingEdited: recipe)) {
                                Text(recipe.name)
                                    .bold()
                                    .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                                    .padding()
                                Text(recipe.glass)
 
                                Text(recipe.method)
                                    .padding()
                            }
                            
                        }
                    }
                }
                .padding(.bottom)
            }
        }
        }
    }
}

struct EditRecipe_Previews: PreviewProvider {
    static var previews: some View {
        EditRecipe()
    }
}
