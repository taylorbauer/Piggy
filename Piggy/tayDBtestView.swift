//
//  tayDBtestView.swift
//  Piggy
//
//  Created by Taylor Bauer on 4/21/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import SwiftUI

struct tayDBtestView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: InventoryDBItem2.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \InventoryDBItem2.name, ascending: true)]) var items: FetchedResults<InventoryDBItem2>
    
    var body: some View {
        VStack {
            List(items, id: \.self) { item in
                Text(item.name ?? "Unknown")
            }
            
            Button("Add") {
                let spiritNames = ["Gin", "Vodka", "Vermouth", "Wine", "Pilsner"]
                let spiritCounts = [1, 2, 3, 4, 5, 6, 7, 8]
                let prices = [1.01, 1.02, 1.04, 1.19, 19.99]
                
                let chosenName = spiritNames.randomElement()!
                let chosenCurrentCount = spiritCounts.randomElement()!
                let chosenPreviousCount = spiritCounts.randomElement()!
                let chosenPar = spiritCounts.randomElement()!
                let chosenPrice = prices.randomElement()!
                
                let inventorySample = InventoryDBItem2(context: self.managedObjectContext)
                inventorySample.id = UUID()
                inventorySample.name = chosenName
                inventorySample.currentCount = Int16(chosenCurrentCount)
                inventorySample.previousCount = Int16(chosenPreviousCount)
                inventorySample.par = Int16(chosenPar)
                inventorySample.price = chosenPrice
                try? self.managedObjectContext.save()
            }
        }
    }
}



#if DEBUG
struct tayDBtestViewPreview : PreviewProvider {
    static var previews: some View {
        tayDBtestView()
          .environmentObject(InventoryDBItem2())
    }
}
#endif
