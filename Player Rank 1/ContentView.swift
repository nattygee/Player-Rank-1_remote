//
//  ContentView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-01-28.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        // MARK: tab bar
        TabView {
            CardGameView()
                .tabItem {
                    Image("tabIcon_cards")
                    Text("Card game")
                }
            NextProjectView()
                .tabItem{
                    Image("tabIcon_nextProj")
                    Text("Next project")
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
