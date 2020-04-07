//
//  InventoryStepper.swift
//  Piggy
//
//  Created by Taylor Bauer on 1/30/20.
//  Copyright © 2020 Group 6. All rights reserved.
//
//  This will be the view that contains the steppers found in the
//  pages that contain any inventory incrementing
//
//  This needs to be a separate view because otherwise the lists
//  would not know which values to step through in the larger
//  Take...Inventory views.
//
//  When we implement our database, we will pull the "current" value from
//  this view when generating actual inventory counts.  This will need to be
//  done from the Take...Inventory view that calls this
//

import SwiftUI

struct InventoryStepper: View {
    
    //  If this is confusing, InventoryStepper takes one parameter called
    //  "itemType" that is of type "InventoryItem"
    var itemType: InventoryItem
    
    //  Each InventoryStepper stores a value called current
    @State private var current: Int
    
    //  This is necessary in order to initialize the values to the result of
    //  the previous count.
    init(itemType: InventoryItem) {
        self.itemType = itemType
        self._current = State(initialValue: itemType.lastCount)
    }
    
    var body: some View {
        HStack {
            Spacer()
            // "Stepper" is just the iOS object that looks like this: [-][+]
            Stepper("Current \(itemType.name) count: \(self.current)", value: self.$current, in: 0...1000)
        }.padding()
    }
}

struct InventoryStepper_Previews: PreviewProvider {
    static var previews: some View {
        InventoryStepper(itemType: InventoryItem(id: UUID(), name: "FAKEITEM", lastCount: 10, currentCount: 0, par: 4, price: 10.25))
    }
}
