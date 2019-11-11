//
//  ContentView.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/11/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text ("Welcome to Piggy")
                    .font(.title)
                    .padding()
                Spacer()
                PiggyLogo()
                    .offset(x: -10, y: -10)
            }
            Text("Main Menu:")
                .padding()
            List {      // To be converted to NavigationView when ready
                Text("Inventory")
                Text("Recipes")
                Text("Business Analytics")
            }
 
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (10.5-inch)"))
    }
}
