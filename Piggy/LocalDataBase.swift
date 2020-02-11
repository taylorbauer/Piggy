//
//  LocalDataBase.swift
//  Piggy
//
//  Created by mitch simmons on 2/11/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import Foundation
import os.log
import SQLite3

class LocalDataBase {
	let dbURL: URL
	var DataBase: OpaquePointer?
	
	init() {
		do {
			do{
				dbURL = try FileManager.default.url(for: .cachesDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("implementation.db")
			} catch {
				dbURL = URL(fileURLWithPath: "")
				return
			}
			
			try openDataBase()
			try createTables()
		} catch {
			print("Error: Returning")
			return
		}
	}
	
	func openDataBase() throws {
		if sqlite3_open(dbURL.path, &DataBase) != SQLITE_OK {
			throw SqliteError(message: "Error Opening Database \(dbURL.absoluteString)")
		}
	}
	
	func createTables() throws {
		let createTableQuery = sqlite3_exec(DataBase, "CREATE TABLE IF NOT EXISTS Alcohol (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, drink_group_id INTEGER, inventory INTEGER, CUR_PRICE DOUBLE, PREV_PRICE DOUBLE, COGS DOUBLE, INV_1_PRIOR INT, INV_1_PRIOR_DATE DATE, INV_2_PRIOR INT, INV_2_PRIOR_DATE DATE, INV_3_PRIOR INT, INV_3_PRIOR_DATE DATE, INV_4_PRIOR INT, INV_4_PRIOR_DATE DATE, INV_5_PRIOR INT, INV_5_PRIOR_DATE DATE, Demand_Coefficient DOUBLE, RunDown_Time DOUBLE)", nil, nil, nil)
		if (createTableQuery != SQLITE_OK) {
			throw SqliteError(message: "unable to create table records")
		}
	}
}

class SqliteError : Error {
	var message = ""
	var error = SQLITE_ERROR
	init(message: String = "") {
		self.message = message
	}
	init(error: Int32){
		self.error = error
	}
}
