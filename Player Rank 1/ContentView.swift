//
//  ContentView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-01-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            // comment here
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .background(Color.green)
                
            VStack {
                Image("1HC_logo_full-05")
                    .resizable()
                    .padding(16)
                    .aspectRatio(contentMode: .fit)
                
                Text("Testing this out")
                    .fontWeight(.black)
                    .padding(16)
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .kerning(/*@START_MENU_TOKEN@*/2.01/*@END_MENU_TOKEN@*/)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
