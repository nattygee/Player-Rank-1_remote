//
//  ContentView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-01-28.
//

import SwiftUI

struct ContentView: View {
    @State private var compCard = "blue06"
    @State private var playerCard = "red04"
    @State private var compScore = 2
    @State private var playerScore = 4
    
    var body: some View {
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
                VStack(spacing: 16.0) {
                    Button {
                        // generate random number for cards
                        let userRandNum = Int.random(in: 1...8)
                        let compRandNum = Int.random(in: 1...8)
                        
                        //update card
                        playerCard = "red0" + String(userRandNum)
                        compCard = "blue0" + String(compRandNum)
                        
                        //update score
                        playerScore = 3
                        compScore = 1
                        
                    } label: {
                        HStack {
                            Image("Track")
                            Text("Click this")
                        }
                    }.padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8.0)

//                    Text("Get started")
//                        .fontWeight(.black)
//                        .padding(16)
//                        .background(Color.blue)
//                        .foregroundColor(Color.white)
//                        .kerning(/*@START_MENU_TOKEN@*/2.01/*@END_MENU_TOKEN@*/)
//                        .cornerRadius(8.0)
//
//                    Text("Maybe next time")
//                        .fontWeight(.black)
//                        .padding(16)
//                        .foregroundColor(Color.blue)
//                        .kerning(/*@START_MENU_TOKEN@*/2.01/*@END_MENU_TOKEN@*/)
//                        .cornerRadius(8.0)
//                    .border(Color.blue, width: 2)
                }

            }
            Spacer()
        }
        .padding()
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
