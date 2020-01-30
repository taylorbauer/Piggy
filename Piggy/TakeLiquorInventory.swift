//
//  TakeLiquorInventory.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/22/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

//  This is the page that will contain all the actual tools for
//  recording inventory.  It is called on by NewInventoryPage.

//  Right now it doesn't store the data and it is not very pretty.
//  It is more a proof of concept for once we actually decide on a
//  scheme.

//  There is an issue generating as many pickerwheels as this menu
//  currently generates.  If this list gets long enough it eventually
//  crashes.

import SwiftUI

struct TakeLiquorInventory: View {
    
    // Decode inventory.json to create InventoryItem objects
    // This list of objects is called "items"
    let items = Bundle.main.decode([InventoryItem].self, from: "inventory.json")

    var body: some View {
        VStack() {
            Text("New Inventory Count")
                .font(.title)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
            List {
                // Here, "bottle" is each instance of class InventoryItem
                // Now, "items" is a list of "bottle"s that we use to generate the views
                ForEach(items) { bottle in
                    VStack(alignment: .leading) {
                        Text(bottle.name)
                            .font(.headline)
                        HStack {
                            
                            // InventoryStepper is the view that contains the
                            // actual counter for the items.
                            // We will pull the result out of the "current"
                            // variable in this view when we implement our database
                            InventoryStepper(itemType: bottle)
                            // This is a little ugly and we can pretty it up later

                            Spacer()
                        }
                        Spacer()
                        Text("Last \(bottle.name) Count: \(bottle.lastCount)")
                    }
                    }
                }
            
            }
        }
    }

struct TakeLiquorInventory_Previews: PreviewProvider {
    static var previews: some View {
        TakeLiquorInventory()
        //.previewDevice(PreviewDevice(rawValue: "iPad Pro (10.5-inch)"))
    }
}
