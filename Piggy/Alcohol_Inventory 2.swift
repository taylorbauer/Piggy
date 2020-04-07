//
//  Alcohol_Inventory.swift
//  Piggy
//
//  Created by mitch simmons on 2/11/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import Foundation

class Alcohol_Inventory {
	// attributes of Table
	var id: Int
	var name: String
	var alcohol_type_id: Int
	var inventory: Int
	var current_price: Double
	var previous_price: Double
	var COGS: Double
	var INV_1_PRIOR: Int
	var INV_1_PRIOR_DATE: Date
	var INV_2_PRIOR: Int
	var INV_2_PRIOR_DATE: Date
	var INV_3_PRIOR: Int
	var INV_3_PRIOR_DATE: Date
	var INV_4_PRIOR: Int
	var INV_4_PRIOR_DATE: Date
	var INV_5_PRIOR: Int
	var INV_5_PRIOR_DATE: Date
	var Demand_Coefficient: Double
	var RunDown_Time: Double
	
	init(
		id: Int,
		name: String,
		alcohol_type_id: Int,
		inventory: Int,
		current_price: Double,
		previous_price: Double,
		COGS: Double,
		INV_1_PRIOR: Int,
		INV_1_PRIOR_DATE: Date,
		INV_2_PRIOR: Int,
		INV_2_PRIOR_DATE: Date,
		INV_3_PRIOR: Int,
		INV_3_PRIOR_DATE: Date,
		INV_4_PRIOR: Int,
		INV_4_PRIOR_DATE: Date,
		INV_5_PRIOR: Int,
		INV_5_PRIOR_DATE: Date,
		Demand_Coefficient: Double,
		RunDown_Time: Double
	){
		self.id = id
		self.name = name
		self.alcohol_type_id = alcohol_type_id
		self.inventory = inventory
		self.current_price = current_price
		self.previous_price = previous_price
		self.COGS = COGS
		self.INV_1_PRIOR = INV_1_PRIOR
		self.INV_1_PRIOR_DATE = INV_1_PRIOR_DATE
		self.INV_2_PRIOR = INV_1_PRIOR
		self.INV_2_PRIOR_DATE = INV_1_PRIOR_DATE
		self.INV_3_PRIOR = INV_1_PRIOR
		self.INV_3_PRIOR_DATE = INV_1_PRIOR_DATE
		self.INV_4_PRIOR = INV_1_PRIOR
		self.INV_4_PRIOR_DATE = INV_1_PRIOR_DATE
		self.INV_5_PRIOR = INV_1_PRIOR
		self.INV_5_PRIOR_DATE = INV_1_PRIOR_DATE
		self.Demand_Coefficient = Demand_Coefficient
		self.RunDown_Time = RunDown_Time
	}
	
	/*(id INTEGER PRIMARY KEY AUTOINCREMENT,
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
	RunDown_Time DOUBLE)*/
}
