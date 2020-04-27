//
//  ViewCurrentInventory2.swift
//  Piggy
//
//  Created by Taylor Bauer on 4/27/20.
//  Copyright © 2020 Group 6. All rights reserved.
//


import SwiftUI

struct ViewCurrentInventory2: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: InventoryDBItem2.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \InventoryDBItem2.name, ascending: true)]) var items: FetchedResults<InventoryDBItem2>
    
    var body: some View {
        VStack {
            Text("Current Inventory as of\n\(Date())")
                
                .padding()
                .font(.headline)
            Group {
                List(items, id: \.self) { item in
                    InventoryReportRow2(item: item)
                }
            }
        }
    }
}

struct ViewCurrentInventory2_Previews: PreviewProvider {
    static var previews: some View {
        ViewCurrentInventory2()
    }
}
