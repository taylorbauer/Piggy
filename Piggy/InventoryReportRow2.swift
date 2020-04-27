//
//  InventoryReportRow2.swift
//  Piggy
//
//  Created by Taylor Bauer on 4/27/20.
//  Copyright © 2020 Group 6. All rights reserved.
//


import SwiftUI

struct InventoryReportRow2: View {
    @State var item: InventoryDBItem2
    var body: some View {
        HStack {
            Text(item.name!)
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

//struct InventoryReportRow2_Previews: PreviewProvider {
//    static var previews: some View {
//        InventoryReportRow2(item: <#InventoryDBItem#>)
//    }
//}
