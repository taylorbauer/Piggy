//
//  GenerateOrderReport.swift
//  Piggy
//
//  Created by Taylor Bauer on 3/30/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import SwiftUI

struct GenerateOrderReport: View {
    
    let liquors = Bundle.main.decode([InventoryItem].self, from: "liquor_inventory.json")
        .sorted{
            $0.name < $1.name
    }
    
    let beers = Bundle.main.decode([InventoryItem].self, from: "beer_inventory.json")
        .sorted{
            $0.name < $1.name
    }
    
    let wines = Bundle.main.decode([InventoryItem].self, from: "wine_inventory.json")
        .sorted{
            $0.name < $1.name
    }
    
    var body: some View {
        VStack {
            Text("Order Report\n\n\(Date())")
                
                .padding()
                .font(.headline)
            Group {
                List {
                    Section(header: Text("Liquor").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0)).padding()
                        .font(.title)){
                            ForEach(liquors) { liquor in
                                if (liquor.par > liquor.currentCount) {
                                    OrderReportRow(item: liquor)
                                }
                            }
                    }
                    Section(header: Text("Beer").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0)).padding()
                        .font(.title)){
                            ForEach(beers) { beer in
                                if (beer.par > beer.currentCount) {
                                    OrderReportRow(item: beer)
                                }
                            }
                    }
                    Section(header: Text("Wine").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0)).padding()
                        .font(.title)){
                            ForEach(wines) { wine in
                                if (wine.par > wine.currentCount) {
                                    OrderReportRow(item: wine)
                                }
                            }
                    }
                }
            }
        }
    }
}

struct GenerateOrderReport_Previews: PreviewProvider {
    static var previews: some View {
        GenerateOrderReport()
    }
}
