//
//  InventoryReportRow.swift
//  Piggy
//
//  Created by Taylor Bauer on 3/30/20.
//  Copyright © 2020 Group 6. All rights reserved.
//
//  This is the row that displays data for ViewCurrentInventory
//

import SwiftUI

struct InventoryReportRow: View {
    @State var item: InventoryItem
    var body: some View {
        HStack {
            Text(item.name)
                .padding()
                .font(.headline)
            Spacer()
            VStack{
                HStack {
                    Spacer()
                    Text("Current Count: \(item.currentCount)")
                }
                HStack {
                    Spacer()
                    Text("Par: \(item.par)")
                }
                HStack {
                    Spacer()
                    HStack {
                        Text("Missing:")
                            .bold()
                        Text(String(item.par - item.currentCount))
                            .foregroundColor((item.par - item.currentCount <= 0) ? .green : .red)
                        .bold()
                    }
                }
            }
        .padding()
            
        }
    }
}

struct InventoryReportRow_Previews: PreviewProvider {
    static var previews: some View {
        InventoryReportRow(item: InventoryItem(id: UUID(), name: "FAKEITEM", lastCount: 10, currentCount: 0, par: 4))
    }
}
