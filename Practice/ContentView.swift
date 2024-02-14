//
//  ContentView.swift
//  Practice
//
//  Created by Fawaz Tarar on 14/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var timesBeingTapped = 0
    @State private var petName = ""
    @State private var petNames = [String]()  // Array to store pet names
    
    var body: some View {
        NavigationView {  // Wrap the content in a NavigationView
            VStack {
                Button("Times tapped: \(timesBeingTapped)") {
                    timesBeingTapped += 1
                }
                .padding()

                Form {
                    TextField("Enter your pet's name", text: $petName)
                    Button("Submit") {
                        guard !petName.isEmpty else { return }
                        petNames.append(petName)  // Add the new pet name to the list
                        petName = ""  // Reset the text field
                    }
                    ForEach(petNames, id: \.self) { name in
                        NavigationLink(destination: NameDisplayView(petName: name)) {
                            Text(name)
                        }
                    }
                }
                .navigationBarTitle("Pet Names")  // Set the navigation bar title
                
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.blue)
                    Text("Hello, FAWAZ!")
                }
                .padding()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
