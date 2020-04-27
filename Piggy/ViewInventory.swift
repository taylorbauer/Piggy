//
//  ViewInventory.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/24/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

//  This is where the user can look up previous inventory counts and
//  associated order reports.
//  It is called on by MainMenu.

import SwiftUI

struct ViewInventory: View {
    var body: some View {
        NavigationView {
                VStack {
                    List {
                        Section(header: Text("View Inventory Menu").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .font(.title)){
                                HStack {
                                    Image("liquor 2")
                                        .resizable()
                                        .frame(width: 64, height: 64)
                                    NavigationLink(destination: ViewCurrentInventory2()) {
                                        Text("View Current Inventory")
                                    }
                                }
                                HStack {
                                    Image("angel")
                                        .resizable()
                                        .frame(width: 64, height: 64)
                                    NavigationLink(destination: GenerateOrderReport(subtotal: 0)) {
                                        Text("Generate Order Report")
                                    }
                                }
                        }
                    }
            }.navigationViewStyle(StackNavigationViewStyle())
            .listStyle(GroupedListStyle())
        }
}
}

struct ViewInventory_Previews: PreviewProvider {
    static var previews: some View {
        ViewInventory()
    }
}
