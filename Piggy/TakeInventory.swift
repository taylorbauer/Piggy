//
//  TakeInventory.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/22/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

import SwiftUI

struct TakeInventory: View {
    let item = Bundle.main.decode([InventoryItem].self, from: "inventory.json")
    var body: some View {
        VStack(alignment: .leading) {
            Text("New Inventory Count")
                .font(.title)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            List {
                ForEach(item) { bottle in
                    VStack(alignment: .leading) {
                        HStack {
                            Spacer()
                            Text(bottle.name)
                                .font(.headline)
                            
                            Spacer()
        
                            Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Count")) {
                                Text("1").tag(1)
                                Text("2").tag(2)
                                Text("3").tag(3)
                                Text("4").tag(4)
                            }
                            .pickerStyle( DefaultPickerStyle())
                            .padding()
                            .frame(width: 0.0)
                            
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

struct TakeInventory_Previews: PreviewProvider {
    static var previews: some View {
        TakeInventory()
        .previewDevice(PreviewDevice(rawValue: "iPad Pro (10.5-inch)"))
    }
}
