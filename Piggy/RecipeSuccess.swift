//
//  RecipeSuccess.swift
//  Piggy
//
//  Created by Taylor Bauer on 3/4/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import SwiftUI

struct RecipeSuccess: View {
    var body: some View {
        VStack {
            Group {
                Text("Successfully Saved New Recipe!")
                    .bold()
                    .padding()
                NavigationLink(destination: NewRecipe()) {
                Spacer()
                Text("Create another recipe")
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
                }.padding()
                
                NavigationLink(destination: RecipeSearch()) {
                Spacer()
                Text("View Recipes")
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
                }.padding()
                
                NavigationLink(destination: MainMenu()) {
                Spacer()
                Text("Back to Main Menu")
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
                }.padding()
            }
        }
    }
}

struct RecipeSuccess_Previews: PreviewProvider {
    static var previews: some View {
        RecipeSuccess()
    }
}
