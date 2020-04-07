//
//  InventoryDBitem.swift
//  Piggy
//
//  Created by mitch simmons on 4/7/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import Foundation

class InventoryDBitem {
	
	var id: Int
	var name: String?
	var group_id: Int
	var InvCount: Int
	var CurrPrice: Double
	var PrevPrice: Double
	var COGS: Double
	var Sold: Int
	
	init(id: Int, name: String?, group_id: Int, InvCount: Int, CurrPrice: Double, PrevPrice: Double, COGS: Double, Sold: Int){
		self.id = id
		self.name = name
		self.group_id = group_id
		self.InvCount = InvCount
		self.CurrPrice = CurrPrice
		self.PrevPrice = PrevPrice
		self.COGS = COGS
		self.Sold = Sold
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
