//
//  TakeBeerInventory.swift
//  Piggy
//
//  Created by Taylor Bauer on 2/4/20.
//  Copyright © 2020 Group 6. All rights reserved.
//
//  For comments on how this view works, please view
//  "TakeLiquorInventory.swift"
//

import SwiftUI

struct TakeBeerInventory: View {

    let items = Bundle.main.decode([InventoryItem].self, from: "beer_inventory.json")

    var body: some View {
        VStack() {
            Text("New Inventory Count")
                .font(.title)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
            List {

                ForEach(items) { bottle in
                    VStack(alignment: .leading) {
                        Text(bottle.name)
                            .font(.headline)
                        HStack {
                            
                            InventoryStepper(itemType: bottle)

                            Spacer()
                        }
                        Spacer()
                        Text("Last \(bottle.name) Count: \(bottle.lastCount)")
                    }
                    }
                HStack {
                    Spacer()
                    Button(action: {
                        print("Inventory submitted (not really)")
                    }) {
                        Text("SUBMIT BEER INVENTORY")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color.pink)
                            .cornerRadius(30)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.pink, lineWidth: 5)
                        )
                    }
                    .padding()
                    Spacer()
                }
                

                }
                }
            }
}

struct TakeBeerInventory_Previews: PreviewProvider {
    static var previews: some View {
        TakeBeerInventory()
    }
}
