//
//  InventoryItem.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/25/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

import SwiftUI

struct InventoryItem: Codable, Identifiable {
    var id: UUID
    var name: String
    var lastCount: Int
}
