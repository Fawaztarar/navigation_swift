//
//  NameDisplayView.swift
//  Practice
//
//  Created by Fawaz Tarar on 14/02/2024.
//

import Foundation

import SwiftUI

    struct NameDisplayView: View {
        var petName: String
    
        var body: some View {
            Text("Your pet's name is \(petName)")
                .navigationTitle("Pet Name")
        }
    }

// Preview provider for NameDisplayView
struct NameDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        // It's common to wrap views that use navigationTitle in a NavigationView for previews.
        NavigationView {
            NameDisplayView(petName: "Buddy")  // Provide a sample pet name for the preview.
        }
    }
}
