//
//  InventoryDB.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/24/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

//  This is where the user can look up previous inventory counts and
//  associated order reports.
//  It is called on by MainMenu.

import SwiftUI
import SQLite

class InventoryDB: UIViewController {
	
	var database: Connection!
	
	//All columns for Alcohol Table
	let alcoholTable = Table("Alcohol")
	let id = Expression<Int>("id")
	let name = Expression<String>("name")
	let group_id = Expression<Int>("group_ID")
	let inventory = Expression<Int>("Inventory")
	let current_price = Expression<Double>("current_price")
	let previous_price = Expression<Double>("previous_price")
	let COGS = Expression<Double>("COGS")
	let INV_1_Prior = Expression<Int>("INV_1_PRIOR")
	let INV_1_Prior_Date = Expression<Date>("INV_1_PRIOR_DATE")
	let INV_2_Prior = Expression<Int>("INV_2_PRIOR")
	let INV_2_Prior_Date = Expression<Date>("INV_2_PRIOR_DATE")
	let INV_3_Prior = Expression<Int>("INV_3_PRIOR")
	let INV_3_Prior_Date = Expression<Date>("INV_3_PRIOR_DATE")
	let INV_4_Prior = Expression<Int>("INV_4_PRIOR")
	let INV_4_Prior_Date = Expression<Date>("INV_4_PRIOR_DATE")
	let INV_5_Prior = Expression<Int>("INV_5_PRIOR")
	let INV_5_Prior_Date = Expression<Date>("INV_5_PRIOR_DATE")
	let demand_coefficient = Expression<Double>("demand_coefficient")
	let rundown_time = Expression<Double>("rundown_time")
	
	//other table stuff goes here
	
    
	override func viewDidLoad() {
		super.viewDidLoad()
		
		do {
			let dbDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
			let fileUrl = dbDirectory.appendingPathComponent("local_db").appendingPathExtension("sqlite3")
			let database = try Connection(fileUrl.path)
			self.database = database
		} catch {
			print(error)
		}
		
	}
	
	@IBAction func createTable() {
		
		let createTable = self.alcoholTable.create { (table) in
			table.column(self.id, primaryKey: true)
			table.column(self.name)
			table.column(self.group_id)
			table.column(self.inventory)
			table.column(self.current_price)
			table.column(self.previous_price)
			table.column(self.COGS)
			table.column(self.INV_1_Prior)
			table.column(self.INV_1_Prior_Date)
			table.column(self.INV_2_Prior)
			table.column(self.INV_2_Prior_Date)
			table.column(self.INV_3_Prior)
			table.column(self.INV_3_Prior_Date)
			table.column(self.INV_4_Prior)
			table.column(self.INV_4_Prior_Date)
			table.column(self.INV_5_Prior)
			table.column(self.INV_5_Prior_Date)
			table.column(self.demand_coefficient)
			table.column(self.rundown_time)
		}
		
		do {
			try self.database.run(createTable)
		} catch {
			//no worries, means the table has already been created
		}
		
	}
	
	
	
}
