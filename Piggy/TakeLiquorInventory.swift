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
    let item = Bundle.main.decode([InventoryItem].self, from: "inventory.json")
    var nums = [0...20]
    var body: some View {
        VStack() {
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
                            
                            Picker(selection: .constant(bottle.lastCount), label: Text("Count")) {
                                ForEach(0..<100) { number in
                                    Text("\(number)")
                                }
                                
                                
                            }
                            .pickerStyle( WheelPickerStyle())
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

struct TakeLiquorInventory_Previews: PreviewProvider {
    static var previews: some View {
        TakeLiquorInventory()
        .previewDevice(PreviewDevice(rawValue: "iPad Pro (10.5-inch)"))
    }
}
