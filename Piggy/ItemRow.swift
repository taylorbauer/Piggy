//
//  ItemRow.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/18/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    

    
    var body: some View {
        NavigationLink(destination: Text(item.name)) {
            Text(item.name)
                .font(.headline)
        }
    }
}

//struct ItemRow_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemRow(item: MenuItem(from: ))
//    }
//}
