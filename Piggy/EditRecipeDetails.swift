//
//  EditRecipeDetails.swift
//  Piggy
//
//  Created by Taylor Bauer on 4/13/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import SwiftUI

struct EditRecipeDetails: View {
    @State private var newCocktail: Recipe!
//    @State private var tempName: String = "Cocktail Name"
//    @State private var tempMethod: String = "Shaken/Stirred?"
//    @State private var tempGlass: String = "Rocks, Coupe, etc."
//    @State private var tempGarnish: String = "Peel? Zest? Cherry?"
    
    @State var cocktailBeingEdited: Recipe
    
    @State var ingredientCount: Int = 3
    
    
    
    var body: some View {
        
        VStack(alignment: .leading) { // I can't figure out how to get text alignment to work, but ideally this will be left justified
            
            NavigationView{
                VStack(alignment: .leading) {
                    ScrollView{
                        
                        Text("Edit \(cocktailBeingEdited.name) Recipe")
                            .font(.title)
                            .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .padding()
                        Group{
                            Group{
                                Text("Cocktail Name")
                                    .font(.headline)
                                
                                TextField("Name", text: $cocktailBeingEdited.name)
                                    .padding()
                                    .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                                Text("Method")
                                    .font(.headline)
                                TextField("Name", text: $cocktailBeingEdited.method)
                                    .padding()
                                    .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                            }
                            Group {
                                Text("Glass")
                                    .font(.headline)
                                TextField("Glass", text: $cocktailBeingEdited.glass)
                                    .padding()
                                    .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                                Text("Garnish")
                                    .font(.headline)
                                TextField("Garnish", text: $cocktailBeingEdited.garnish)
                                    .padding()
                                    .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                            }
                            Group {
                                Text("Ingredients: ")
                                    .font(.headline)
                                HStack {
                                    Text("\(ingredientCount) ingredients")
                                    Stepper("", onIncrement: {
                                        self.ingredientCount += 1
                                    }, onDecrement: {
                                        if self.ingredientCount != 1 {
                                            self.ingredientCount -= 1
                                        }
                                        else if self.ingredientCount < 1 {
                                            self.ingredientCount += 1
                                        }
                                        else {
                                            self.ingredientCount = 1
                                        }
                                    })
                                    Spacer()
                                    Text("Add/Remove")
                                    Spacer()
                                    
                                }
                                IngredientsList(count: ingredientCount)
                                
                                HStack {
                                    Spacer()
                                    NavigationLink(destination: RecipeSuccess()) {
                                        
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
                                    }
                                    Spacer()
                                }

                            }
                        }
                    }
                }
                .padding()
            }
         
        }

    }
    
}



struct EditRecipeDetails_Previews: PreviewProvider {
    static var previews: some View {
        EditRecipeDetails(cocktailBeingEdited: Recipe())
    }
}
