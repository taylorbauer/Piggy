//
//  InventoryItem.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/25/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

//  This is the object that generates from the data in inventory.json.
//  Eventually, it will have additional properties, like cost.

//  These are used by all of the Inventory pages.

import SwiftUI

struct InventoryItem: Codable, Identifiable {
    var id: UUID
    var name: String
    var lastCount: Int
    var currentCount: Int
}
