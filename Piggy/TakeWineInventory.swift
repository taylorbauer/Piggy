//
//  TakeWineInventory.swift
//  Piggy
//
//  Created by Taylor Bauer on 2/10/20.
//  Copyright © 2020 Group 6. All rights reserved.
//
//  For comments on how this view works, please view
//  "TakeLiquorInventory.swift"
//
import SwiftUI

struct TakeWineInventory: View {
    let items = Bundle.main.decode([InventoryItem].self, from: "wine_inventory.json")
    
    var body: some View {
        VStack() {
            Text("New Wine Inventory Count")
                .font(.title)
//                .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
            List {
                
                ForEach(items) { bottle in
                    VStack(alignment: .leading) {
                        Text(bottle.name)
                            .font(.headline)
                            .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                        HStack {
                            
                            InventoryStepper(itemType: bottle)
                            
                            Spacer()
                        }
                        Spacer()
                        Text("Last \(bottle.name) Count: \(bottle.lastCount)")
                            .font(.subheadline)
                    }
                }
                HStack {
                    Spacer()
                    Button(action: {
                        print("Inventory submitted (not really)")
                    }){
                        Text("SUBMIT WINE INVENTORY")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .cornerRadius(30)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0), lineWidth: 5)
                        )
                    }
                    .padding()
                    Button(action: {
                        print("Saved for later (not really)")
                    }){
                        Text("Save for later")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .cornerRadius(30)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0), lineWidth: 5)
                        )
                    }
                    .padding()
                    Spacer()
                }
                
                
            }
        }
    }
}

struct TakeWineInventory_Previews: PreviewProvider {
    static var previews: some View {
        TakeWineInventory()
    }
}
