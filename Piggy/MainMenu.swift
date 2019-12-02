//
//  MainMenu.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/11/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

// Main Menu

import SwiftUI

struct MainMenu: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    PiggyLogo()
                    List {
                        
                        //For extensibilitiy's sake, everything in this menu can be eventually reduced down to objects of ItemRow
                        Section(header: Text("Inventory").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .font(.title)){
                        NavigationLink(destination: ViewInventory()) {
                            Text("View Current Inventory / Generate Order Reports")
                            }
                            NavigationLink(destination: NewInventoryPage()) {
                                Text("Take Inventory")
                            }
                        }
                        
                        Section(header: Text("Recipes").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .font(.title)) {
                            NavigationLink(destination: RecipeSearch()) {
                                Text("Find Recipes")
                            }
                            NavigationLink(destination: NewRecipe()) {
                                Text("Create New Recipe")
                            }
                        }
                        
                        Section(header: Text("Business Analytics").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .font(.title)) {
                            NavigationLink(destination: BSAN()) {
                                Text("View Business Analytics")
                            }
                            
                        }
                        
                        
                        Section(header: Text("About").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))) {
                            NavigationLink(destination: About()) {
                                Text("About Team 6")
                            }
                        }
                    }
                    .navigationBarTitle("Main Menu")
                }
            }.navigationViewStyle(StackNavigationViewStyle())
            .listStyle(GroupedListStyle())
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (10.5-inch)"))
    }
}
