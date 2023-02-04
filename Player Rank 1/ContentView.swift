//
//  ContentView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-01-28.
//

import SwiftUI

struct nextProject: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("A blank page") {
                    Text("Check this page out")
                }
                NavigationLink("Another blank page") {
                    Text("Another page to look at")
                }
                NavigationLink("A red card") {
                    Image("red01")
                }
            }.navigationTitle("Next project")
            List {
                Section("list view") {
                    Text("hey")
                    Text("hey")
                    Text("hey")
                }
            }
        }
    }
}

struct cardGame: View {
    @State private var compCard = "starterCard"
    @State private var playerCard = "starterCard"
    @State private var compScore = 0
    @State private var playerScore = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    HStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                        .foregroundColor(.accentColor)
                    
                    Spacer()

                    Image("1HC_logo_full-05")
                        .resizable()
                        .padding(16)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 160, height: 100.0)
                    } .padding()
                        
                    VStack {
                        Spacer()
                        
                        // MARK: cards
                        HStack(spacing: 24.0) {
                            Image(playerCard)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Image(compCard)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .padding(24)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(16.0)
                        
                        Spacer()
                        
                        // scores
                        VStack(spacing: 24.0) {
                            Text("Scores")
                                .font(.footnote)
                                .foregroundColor(Color.gray)
                                .textCase(.uppercase)
                                
                            HStack(spacing: 24.0) {
                                Spacer()
                                VStack() {
                                    Text("Player")
                                        .textCase(.uppercase)
                                        .padding(.bottom)
                                    Text(String(playerScore))
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                }
                                VStack() {
                                    Text("Computer")
                                        .textCase(.uppercase)
                                        .padding(.bottom)
                                    Text(String(compScore))
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                }
                                Spacer()
                            }
                        }
                        
                        Spacer()
                        
                        // MARK: buttons
                        HStack(spacing: 16.0) {
                            Button {
                                // generate random number for cards
                                let playerRandNum = Int.random(in: 1...8)
                                let compRandNum = Int.random(in: 1...8)
                                
                                //update card
                                playerCard = "red0" + String(playerRandNum)
                                compCard = "blue0" + String(compRandNum)
                                
                                //update score
                                func calcScore() {
                                    if playerRandNum > compRandNum {
                                        playerScore += 1
                                    } else if compRandNum > playerRandNum {
                                        compScore += 1
                                    } else {
                                        print("it's a tie!")
                                    }
                                }
                                
                                calcScore()
                            } label: {
                                HStack {
                                    Image(systemName: "hand.draw.fill")
                                    Text("Draw cards")
                                }.padding()
                            }
                                    .frame(width:160)
                                    .background(.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8.0)
                            
                            // reset button
                            Button {
                                playerScore = 0
                                compScore = 0
                                playerCard = "starterCard"
                                compCard = "starterCard"
                            } label: {
                                HStack {
                                    Image(systemName: "x.circle.fill")
                                    Text("Reset scores")
                                }.padding()
                            }.frame(width:160)
                                .border(Color.blue, width: 4)
                                .cornerRadius(8.0)

                        }

                    }
                    Spacer()
                }
                .padding()
                .background(Color.white)
                
                
            }.navigationTitle("Card game")
        }
    }
}

struct ContentView: View {
 
    
    
    var body: some View {
        // tab bar dawg
        

        // MARK: tab bar
        TabView {
            cardGame()
                .tabItem {
                    Image("tabIcon_cards")
                    Text("Card game")
                }
            nextProject()
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
