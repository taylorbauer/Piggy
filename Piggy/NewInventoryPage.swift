//
//  NewInventoryPage.swift
//  Piggy
//
//  Created by Taylor Bauer on 12/2/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

import SwiftUI

struct NewInventoryPage: View {
    
    var currentDateTime = Date()
    
    let dateFormatter = DateFormatter()
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    List {
                        
                        //For extensibilitiy's sake, everything in this menu can be eventually reduced down to objects of ItemRow
                        Section(header: Text("Take Inventory").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                            .font(.title)){
                                NavigationLink(destination: NewCountMainPage()) {
                                    Text("Begin New Inventory Count")
                                }
                                NavigationLink(destination: ResumeInventoryCount()) {
                                    Text("Resume Previously Started Inventory Count")
                                }
                        }
                    }
                    Spacer()
                    Image("point up")
                        .resizable()
                        .frame(width:256, height: 256)
                }
                
            }.navigationViewStyle(StackNavigationViewStyle())
                .listStyle(GroupedListStyle())
            
        }
    }
    
    
}

struct NewInventoryPage_Previews: PreviewProvider {
    static var previews: some View {
        NewInventoryPage()
    }
}
