//
//  InventoryDBitem.swift
//  Piggy
//
//  Created by mitch simmons on 4/7/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import Foundation

struct InventoryDBitem: Hashable {
	
	var name: String?
	var group_id: Int
	var InvCount: Int
	
	init(name: String?, group_id: Int, InvCount: Int){
		self.name = name
		self.group_id = group_id
		self.InvCount = InvCount
	}
	
	var InvList = [InventoryDBitem]()
}

//	let alcoholTable = Table("Alcohol")
//	let id = Expression<Int>("id")
//	let name = Expression<String>("name")
//	let group_id = Expression<Int>("group_ID")
//	let inventory = Expression<Int>("Inventory")
//	let current_price = Expression<Double>("current_price")
//	let previous_price = Expression<Double>("previous_price")
//	let COGS = Expression<Double>("COGS")
