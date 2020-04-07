//
//  OrderReportRow.swift
//  Piggy
//
//  Created by Taylor Bauer on 3/31/20.
//  Copyright © 2020 Group 6. All rights reserved.
//

import SwiftUI

struct OrderReportRow: View {
    @State var item: InventoryItem
    @Binding var subtotal: Float
    // @Binding var total : Float
    var body: some View {
        HStack {
            Text(item.name)
                //.padding()
                .font(.headline)
            Spacer()

                HStack {
                    Spacer()
                    HStack {
                        Text(String(item.par - item.currentCount))
                            .foregroundColor((item.par - item.currentCount <= 0) ? .green : .red)
                        .bold()
                        Text("x")
                        Text("$" + String(format: "%.2f", item.price) + "   = ")
                        Text(String(format: "$%.2f", item.price * (Float((item.par - item.currentCount)))))
                            .bold()
//                         Text(String(subtotal))
                    }.onAppear {
//                        self.subtotal = self.item.price * (Float((self.item.par - self.item.currentCount)));
                        self.subtotal += (self.item.price * (Float((self.item.par - self.item.currentCount))))
                    }
                    
            }
        //.padding()
            
        }
    }
}

//struct OrderReportRow_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderReportRow(item: InventoryItem(id: UUID(), name: "FAKEITEM", lastCount: 10, currentCount: 0, par: 4, price: 10.25), subtotal: Binding<Float>((0)))
//    }
//}
