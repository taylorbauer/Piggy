//
//  TakeLiquorInventory.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/22/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

//  This is the page that will contain all the actual tools for
//  recording inventory.  It is called on by NewInventoryPage.

//  Right now it doesn't store the data and it is not very pretty.
//  It is more a proof of concept for once we actually decide on a
//  scheme.

//  There is an issue generating as many pickerwheels as this menu
//  currently generates.  If this list gets long enough it eventually
//  crashes.

import SwiftUI

struct TakeLiquorInventory: View {
    
    // Decode inventory.json to create InventoryItem objects
    // This list of objects is called "items"
    let items = Bundle.main.decode([InventoryItem].self, from: "liquor_inventory.json")
	
	@State var name: String = ""
	@State var group_id: Int = 0
	@State var InvCount: Int = 0
	@State var numItems: Int = 1

    var body: some View {
        VStack() {
            Text("New Liquor Inventory Count")
                .font(.title)
//                .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
            List {
                // Here, "bottle" is each instance of class InventoryItem
                // Now, "items" is a list of "bottle"s that we use to generate the views
				ForEach(0..<numItems) { bottle in
                    VStack(alignment: .leading) {
                        /*Text(bottle.name)
                            .font(.headline)
                        HStack {
                            
                            // InventoryStepper is the view that contains the
                            // actual counter for the items.
                            // We will pull the result out of the "current"
                            // variable in this view when we implement our database
                            InventoryStepper(itemType: bottle)
                            // This is a little ugly and we can pretty it up later

                            Spacer()
                        }
                        Spacer()
                        Text("Last \(bottle.name) Count: \(bottle.lastCount)")*/
						HStack {
							VStack {
								TextField("Name", text: self.$name)
								Picker("Alcohol Type", selection: self.$group_id) {
									Text("Liquor").tag(0)
									Text("Beer").tag(1)
									Text("Wine").tag(2)
								}.pickerStyle(SegmentedPickerStyle())
							}
							Picker("", selection: self.$InvCount) {
								ForEach(0..<150) { number in
									Text("\(number)")
								}
							}.pickerStyle(WheelPickerStyle())
						}
						
						
                    }
				}
				VStack(alignment: .center) {
					Button(action: {
						self.numItems += 1
					}) {
						Image(systemName: "plus.circle")
						Text("Add another item")
					}
				.padding()
				}
                HStack {
                    Spacer()
                    Button(action: {
                        print("Inventory submitted (not really)")
                    }) {
                        Text("SUBMIT LIQUOR INVENTORY")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .cornerRadius(30)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0), lineWidth: 5)
                        )
                    }
                    .padding()
                    Button(action: {
                        print("Saved for later (not really)")
                    }){
                        Text("Save for later")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .cornerRadius(30)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0), lineWidth: 5)
                        )
                    }
                    .padding()
                    Spacer()
                }
            
                }
                }
            }
}
            

struct TakeLiquorInventory_Previews: PreviewProvider {
    static var previews: some View {
        TakeLiquorInventory()
        //.previewDevice(PreviewDevice(rawValue: "iPad Pro (10.5-inch)"))
    }
	
}
