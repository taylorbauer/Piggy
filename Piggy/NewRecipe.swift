//
//  NewRecipe.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/24/19.
//  Copyright © 2019 Group 6. All rights reserved.
//
//
// This is where the user will create new recipes
// As of right now, it is called on by MainMenu
//
//

import SwiftUI

struct NewRecipe: View {
    @State private var newCocktail: Recipe!
    @State private var tempName: String = "Cocktail Name"
    @State private var tempMethod: String = "Shaken/Stirred?"
    @State private var tempGlass: String = "Rocks, Coupe, etc."
    @State private var tempGarnish: String = "Peel? Zest? Cherry?"
//    @State private var tempIngredient1: String = "Ingredient 1"
//    @State private var tempIngredient2: String = "Ingredient 2"
//    @State private var tempIngredient3: String = "Ingredient 3"
//    @State private var tempIngredient4: String = "Ingredient 4"
//    @State var ingredient1: Ingredient = Ingredient()
//    @State var ingredient2: Ingredient = Ingredient()
//    @State var ingredient3: Ingredient = Ingredient()
//    @State var ingredient4: Ingredient = Ingredient()
//    @State var ingredient5: Ingredient = Ingredient()
//    @State var ingredient6: Ingredient = Ingredient()
//    @State var ingredient7: Ingredient = Ingredient()
//    @State var ingredient8: Ingredient = Ingredient()
//    @State var ingredient9: Ingredient = Ingredient()
//    @State var ingredient10: Ingredient = Ingredient()
    
//    let ingredients = [Ingredient(), Ingredient(), Ingredient(), Ingredient(), Ingredient(), Ingredient(), Ingredient(), Ingredient(), Ingredient(), Ingredient()]
    
    @State var ingredientCount: Int = 4
    var body: some View {
        VStack(alignment: .leading) {
            Text("Create New Recipe")
                .font(.title)
                .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                .padding()
            Group{
                Group{
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
                }
                Group {
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
                }
                Group {
                Text("Ingredients: ")
                    .font(.headline)
                HStack {
                    Text("\(ingredientCount)")
                    Stepper("", value: $ingredientCount)
                    Spacer()
                    Text("Add/Remove")
                    Spacer()
                    
                }
                    IngredientsList(count: ingredientCount)
                    NavigationLink(destination: RecipeSuccess()) {
                        Spacer()
                        Text("Save new recipe")
                            .fontWeight((.bold))
                            .font(.headline)
                            .padding()
                            .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(5)
                        .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0), lineWidth: 5))
                        Spacer()
                        }
                }
            }
            NavigationView{
            HStack {
                NavigationView{
                    NavigationLink(destination: MainMenu()) {
                        Text("Save new recipe")
//                        .fontWeight(.bold)
//                        .font(.headline)
//                        .padding()
//                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
//                        .cornerRadius(10)
//                        .foregroundColor(.white)
//                        .padding(5)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 15)
//                                .stroke(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0), lineWidth: 5))
                    }.padding()
                }
                }
            }.padding()

//                VStack {
//                    VStack {
//                        ForEach((1...ingredientCount), id: \.self) {
//                            TextField("Ingredient \($0):", text: \.self)
//                        }
//                    }
//                    TextField("Ingredient 2", text: $tempIngredient2)
//                        .padding()
//                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
//                    TextField("Ingredient 3", text: $tempIngredient3)
//                        .padding()
//                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
//                    TextField("Ingredient 4", text: $tempIngredient4)
//                        .padding()
//                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
//                    Text("Save new recipe")
//                        .fontWeight(.bold)
//                        .font(.headline)
//                        .padding()
//                        .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
//                        .cornerRadius(10)
//                        .foregroundColor(.white)
//                        .padding(5)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 15)
//                                .stroke(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0), lineWidth: 5)
//                    )
//                }
//            }
        }
            
        .padding()
        
    }
    
}

struct NewRecipe_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipe()
    }
}
