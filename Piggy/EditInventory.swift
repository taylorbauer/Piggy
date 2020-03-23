//
//  EditInventory.swift
//  Piggy
//
//  Created by Taylor Bauer on 12/6/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

// This menu is called on by NewInventoryPage.  It is where you can
// do things like manage the individual elements in each inventory
// category, add or remove items from said categories (think: a
// product is introduced to the bar or discontinued), and adjust
// inventory pars.

// The information here will modify the information in
// inventory.json, which is where all of the inventory categories
// are contained.  This will eventually probably end up modifying
// things in the database once it is configured.

import SwiftUI

struct EditInventory: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                Text("Edit Inventory")
                    .font(.title)
                    .padding()
                Group{
                    List {
                        Section(header: Text("Edit Categories and Pars").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .font(.title)) {
                                NavigationLink(destination: EditLiquorInventory()) {
                                    Text("Edit Liquor Inventory")
                                }
                                NavigationLink(destination: EditWineInventory()) {
                                    Text("Edit Wine Inventory")
                                }
                                NavigationLink(destination: EditBeerInventory()) {
                                    Text("Edit Beer Inventory")
                                }
                        }
                    }
                }
            }
        }
    }
}

struct EditInventory_Previews: PreviewProvider {
    static var previews: some View {
        EditInventory()
    }
}
