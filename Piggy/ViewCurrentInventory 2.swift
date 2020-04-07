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
    let liquors = Bundle.main.decode([InventoryItem].self, from: "liquor_inventory.json")
        .sorted{
            $0.name < $1.name
    }
    let beers = Bundle.main.decode([InventoryItem].self, from: "beer_inventory.json")
        .sorted{
            $0.name < $1.name
    }
    let wines = Bundle.main.decode([InventoryItem].self, from: "wine_inventory.json")
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
                    Section(header: Text("Liquor").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0)).padding()
                    .font(.title)){
                        ForEach(liquors) { liquor in
                            InventoryReportRow(item: liquor)
                        }
                    }
                    Section(header: Text("Beer").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0)).padding()
                    .font(.title)){
                        ForEach(beers) { beer in
                            InventoryReportRow(item: beer)
                        }
                    }
                    Section(header: Text("Wine").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0)).padding()
                    .font(.title)){
                        ForEach(wines) { wine in
                            InventoryReportRow(item: wine)
                        }
                    }
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
