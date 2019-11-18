//
//  Menu.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/18/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

import SwiftUI

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
}
