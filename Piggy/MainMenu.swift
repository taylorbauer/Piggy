//
//  MainMenu.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/11/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

// Main Menu
// This page is where the app opens up to.
// It leads the user to the main landing pages for the different
// functions of our app.

import SwiftUI

struct MainMenu: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    PiggyLogo()
                    List {
                        
                        Section(header: Text("Inventory").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .font(.title)){
//                                NavigationLink(destination: tayDBtestView()) {
//                                    Text("TAY'S DB TEST VIEW")
//                                }
//                                NavigationLink(destination: ViewCurrentInventory2()) {
//                                    Text("ViewCurrentInventory2.0")
//                                }
                                NavigationLink(destination: ViewInventory()) {
                                    Text("View Current Inventory / Order Reports")
                                }
                                NavigationLink(destination: NewInventoryPage()) {
                                    Text("Take Inventory")
                                }
                        }
                        
                        Section(header: Text("Recipes").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .font(.title)) {
                                NavigationLink(destination: RecipeSearch()) {
                                    Text("View Recipes")
                                }
                                NavigationLink(destination: NewRecipe()) {
                                    Text("Create New Recipe")
                                }
                                NavigationLink(destination: EditRecipe()) {
                                    Text("Edit Existing Recipe")
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
        //.previewDevice(PreviewDevice(rawValue: "iPad Pro (10.5-inch)"))
    }
}
