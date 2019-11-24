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
            PiggyLogo()
            NavigationView {
                List {
                    Section(header: Text("Inventory")
                        .font(.title)){
                    NavigationLink(destination: TakeInventory()) {
                        Text("View Current Inventory / Generate Order Reports")
                        }
                        NavigationLink(destination: ViewInventory()) {
                            Text("Take Inventory")
                        }
                    }
                    
                    Section(header: Text("Recipes")
                        .font(.title)) {
                        NavigationLink(destination: RecipeSearch()) {
                            Text("Find Recipes")
                        }
                        NavigationLink(destination: NewRecipe()) {
                            Text("Create New Recipe")
                        }
                    }
                    
                    Section(header: Text("Business Analytics")
                        .font(.title)) {
                        NavigationLink(destination: BSAN()) {
                            Text("View Business Analytics")
                        }
                        
                    }
                    
                    
                    Section(header: Text("About")) {
                        NavigationLink(destination: About()) {
                            Text("About Team 6")
                        }
                    }
                }
                .navigationBarTitle("Main Menu")
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
