//
//  AddInventoryItem.swift
//  Piggy
//
//  Created by Taylor Bauer on 4/27/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import SwiftUI

struct AddInventoryItem: View {
    @State private var name: String = ""
    @State private var price: String = ""
    @State private var par: String = ""
    @State private var initialCount: String = ""
    @State private var showingAlert = false
    @State private var category = ""
    var categories = ["Liquor", "Wine", "Beer"]
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: InventoryDBItem.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \InventoryDBItem.name, ascending: true)]) var items: FetchedResults<InventoryDBItem>
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Add new inventory item")
                        .font(.title)
                        .foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                        .padding()
                    
                    Group{
                        Group{
                            Picker(selection: $category, label: Text("Type").bold()) {
                                ForEach(0 ..< categories.count) {
                                    Text(self.categories[$0])
                                }
                            }
                            
                            
                            Text("Item Name")
                                .font(.headline)
                            
                            TextField("Name", text: $name)
                                .padding()
                                .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                            
                            Text("Price")
                                .font(.headline)
                            
                            
                            TextField("Price", text: $price)
                                .padding()
                                .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                        }
                        Group {
                            Text("Par")
                                .font(.headline)
                            TextField("Par", text: $par)
                                .padding()
                                .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                            Text("initial Count")
                                .font(.headline)
                            TextField("initial Count", text: $initialCount)
                                .padding()
                                .background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 0.3))
                        }
                    }
                    
                    NavigationLink(destination: NewInventoryPage()) {
                        Button("Add") {
                            print("Successfully added to database")
                            let inventorySample = InventoryDBItem2(context: self.managedObjectContext)
                            inventorySample.id = UUID()
                            inventorySample.name = self.name
                            inventorySample.currentCount = Int16(self.initialCount)!
                            inventorySample.previousCount = 0
                            inventorySample.par = Int16(self.par)!
                            inventorySample.price = Double(self.price)!
                            inventorySample.category = self.category
                            
                            try? self.managedObjectContext.save()
                            
                            self.showingAlert = true
                            
                            self.name = ""
                            self.initialCount = ""
                            self.par = ""
                            self.price = ""
                            self.category = ""
                        }
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Success!"), message: Text("Successfully saved new item to database"), dismissButton: .default(Text("OK")))
                        }
                        .font(.title).padding().background(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0)).foregroundColor(.white)
                    }.padding()
                }.padding()
            }
        }
    }
    
    struct AddInventoryItem_Previews: PreviewProvider {
        static var previews: some View {
            AddInventoryItem()
        }
    }
}
