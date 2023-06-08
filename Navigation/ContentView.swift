//
//  ContentView.swift
//  Navigation
//
//  Created by scholar on 6/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack{
                Text("This is a root 🌳")
                    .font(.title2)
                    Color(.green)
                NavigationLink(destination: SecondView()) {
                    Text("Take me to a new view!")
                }
                .toolbar{
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: SecondView()) {
                            Text("Take me to a new view!")
                        }
                    }
                }

//
//                NavigationLink(destination: Text
//                               ("You've arrived at the second view") {
//                    Text("BOO")
//                        .font(.title)
//                        Color(.yellow)
//
//                }
//                NavigationLink
//                (Text"You've arrived at the second view")
//                    .font(.title2)
//                    Color(.green)
//                {
//                    Text("Back")
//                        .font(.title)
//                        Color(.yellow)
//
//                }
            }
        navigationTitle("Home")
        navigationBarTitleDisplayMode(.inline)
           // navigationBarHidden(true)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
