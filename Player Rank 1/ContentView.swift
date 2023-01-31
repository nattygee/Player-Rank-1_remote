//
//  ContentView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-01-28.
//

import SwiftUI

struct ContentView: View {
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
                    Image("red01")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("blue01")
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
                            Text("0")
                                .font(.largeTitle)
                                .fontWeight(.black)
                        }
                        VStack() {
                            Text("Computer")
                                .textCase(.uppercase)
                                .padding(.bottom)
                            Text("0")
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
                        print("a new way to button")
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
