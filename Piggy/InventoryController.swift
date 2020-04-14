//
//  LiquorItem.swift
//  Piggy
//
//  Created by mitch simmons on 4/7/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import Foundation
import UIKit
import SQLite3

class InventoryController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return InvList.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        let newLiquorItem: InventoryDBitem
        newLiquorItem = InvList[indexPath.row]
        cell.textLabel?.text = newLiquorItem.name
        return cell
	}
	
	
	var db: OpaquePointer?
	var InvList = [InventoryDBitem]()
	
	@IBOutlet weak var tableViewInventory: UITableView!
	@IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldCount: UITextField!
	
	@IBAction func saveInventory(_ sender: UIButton){
		
		
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//getting the file
		let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
			.appendingPathComponent("InventoryDB.sqlite")
		
		//open database
		if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
			print("could not open database")
		}
		
		if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Inventory (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, groupID INTEGER, Curr_Inv INTEGER, Curr_Price DOUBLE, Prev_Price DOUBLE, COGS DOUBLE)", nil, nil, nil) != SQLITE_OK {
			let msg = String(cString: sqlite3_errmsg(db)!)
			print("error creating table: \(msg)")
		}
		
	}
	
	func readValues(){
		
		InvList.removeAll()
		
		//select all query
		let queryString = "SELECT * FROM Inventory"
		
		//statement pointer
		var stmt:OpaquePointer?
		
		//preparing the query
		if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
			let err = String(cString: sqlite3_errmsg(db)!)
			print("error preparing insert: \(err)")
			return
		}
		
		while(sqlite3_step(stmt) == SQLITE_ROW){
			//let id = sqlite3_column_int(stmt, 0)
			let name = String(cString: sqlite3_column_text(stmt, 1))
			let group_id = sqlite3_column_int(stmt, 2)
			let InvCount = sqlite3_column_int(stmt, 3)
			/*let CurrPrice = sqlite3_column_double(stmt, 4)
			let PrevPrice = sqlite3_column_double(stmt, 5)
			let COGS = sqlite3_column_double(stmt, 6)
			let Sold = sqlite3_column_int(stmt, 7)*/
			
			InvList.append(InventoryDBitem(name: String(describing: name), group_id: Int(group_id), InvCount: Int(InvCount)))
		}
		
	}
	
}


//	let alcoholTable = Table("Alcohol")
//	let id = Expression<Int>("id")
//	let name = Expression<String>("name")
//	let group_id = Expression<Int>("group_ID")
//	let inventory = Expression<Int>("Inventory")
//	let current_price = Expression<Double>("current_price")
//	let previous_price = Expression<Double>("previous_price")
//	let COGS = Expression<Double>("COGS")

