//
//  MainMenu.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/11/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

// Main Menu

import SwiftUI

struct MainMenu: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        VStack {
            PiggyLogo()
//            NavigationView {
//                List {
//                    ForEach(menu) { section in
//                        Section(header: Text(section.name)) {
//                            ForEach(section.items) { item in
//                                ItemRow(item: item)
//                            }
//                        }
//                    }
//                    }.navigationBarTitle("Main Menu")
//                .listStyle(GroupedListStyle())
//            }
            PiggyLogo()
            NavigationView {
                List {
                    NavigationLink(destination: Inventory()) {
                        Text("Inventory")
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
            //.previewDevice(PreviewDevice(rawValue: "iPad Pro (10.5-inch)"))
    }
}
