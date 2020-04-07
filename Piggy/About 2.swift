//
//  About.swift
//  Piggy
//
//  Created by Taylor Bauer on 11/24/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

// This page will have information about our team

import SwiftUI

struct About: View {
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                
                Text("Team Members:")
                    .font(.title)
                    .padding(20)
                
                Group {
                Text("Megana Chinalachaiagari")
                   .font(.headline)
                Text("Write your job description here!\n")
                }

                Text("Ryan Pierce")
                    .font(.headline)
                Text("Write your job description here!\n")
                
                Text("Tommy Nguyen")
                    .font(.headline)
                Text("Write your job description here!\n")
                
                Text("Mitch Simmons")
                    .font(.headline)
                Text("Write your job description here!\n")
                
                Text("Taylor Bauer")
                    .font(.headline)
                Text("Project Lead and UI Lead\n")
                //Spacer()
            }
        }
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
