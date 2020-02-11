//
//  BSAN.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/24/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

// This will be the main landing page for business analytics

import SwiftUI
import SQLite3

struct BSAN: View {
    var body: some View {
        VStack {
            Text("This is the main menu for business analytics")
			/*
				// adding database
				
				var db: OpaquePointer?
				
				let fileURL = FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendPathComponent("PiggyDatabase.sqlite")
				
				if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
					print("Error Opening Database")
				}
				
				let createTableQuery = """
					CREATE TABLE IF NOT EXISTS
									Alcohol
					(id INTEGER PRIMARY KEY AUTOINCREMENT,
					name TEXT,
					drink_group_id INTEGER,
					inventory INTEGER,
					CUR_PRICE DOUBLE
					PREV_PRICE
					COGS DOUBLE,
					INV_1_PRIOR INT,
					INV_1_PRIOR_DATE DATE,
					INV_2_PRIOR INT,
					INV_2_PRIOR_DATE DATE,
					INV_3_PRIOR INT,
					INV_3_PRIOR_DATE DATE,
					INV_4_PRIOR INT,
					INV_4_PRIOR_DATE DATE,
					INV_5_PRIOR INT,
					INV_5_PRIOR_DATE DATE,
					Demand_Coefficient DOUBLE,
					RunDown_Time DOUBLE)
										"""
				
				sqlite3_exec(db, createTableQuery, nil, nil, nil) != SQLITE_OK {
					print("Error Creating Table")
				}
				
				print("Everything is Fine")
			
			*/
            Spacer()
        }
    }
}

struct BSAN_Previews: PreviewProvider {
    static var previews: some View {
        BSAN()
    }
}
