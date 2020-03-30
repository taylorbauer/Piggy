//
//  ViewCurrentInventory.swift
//  Piggy
//
//  Created by Taylor Bauer on 3/30/20.
//  Copyright © 2020 Group 6. All rights reserved.
//
//  This menu is a plain report of all inventory counts and associated pars.
//  It is not interactive, and it is called on by (confusingly, sorry) by ViewInventory
//

import SwiftUI

struct ViewCurrentInventory: View {
    let recipes = Bundle.main.decode([Recipe].self, from: "recipes.json")
        .sorted {
            $0.name < $1.name
    }
    let Liquor = Bundle.main.decode([InventoryItem].self, from: "liquor_inventory.json")
        .sorted{
            $0.name < $1.name
    }
    var body: some View {
        VStack {
            Text("Current Inventory as of\n\(Date())")
                
                .padding()
                .font(.headline)
            Group {
                List {
                    Section(header: Text("Liquor").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                    .font(.title)){
                        Text("HELLO")
                    }
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
    }
}

struct ViewCurrentInventory_Previews: PreviewProvider {
    static var previews: some View {
        ViewCurrentInventory()
    }
}
