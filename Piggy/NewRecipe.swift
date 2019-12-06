//
//  NewRecipe.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/24/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

// This is where the user will create new recipes
// As of right now, it is called on by MainMenu

import SwiftUI

struct NewRecipe: View {
    var body: some View {
        VStack {
            Text("This is the main menu for creating new recipes")
            Spacer()
        }
    }
}

struct NewRecipe_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipe()
    }
}
