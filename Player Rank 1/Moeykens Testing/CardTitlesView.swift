//
//  CardTitlesView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-13.
//

import SwiftUI

struct CardTitlesView: View {
    var body: some View {
    

        VStack(spacing: 16) {
            Text("Card Titles Practice").font(.largeTitle).fontWeight(.black).multilineTextAlignment(.leading).frame(maxWidth: .infinity)
            //individual card
            VStack(alignment: .trailing) {
                Image("macos_bg_yosemite")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    
                // HOLY CONFUSING OVERLAY
                    .overlay(
                        HStack{
                            Spacer()
                            
                            Text("Yosemite")
                                .foregroundColor(.white)
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .font(.title)
                            }
                            .frame(maxWidth: .infinity)
                            .padding([.bottom], 24)
                            .padding([.top], 40)
                            .padding(.horizontal)
                            .background(
                                LinearGradient(colors: [.black.opacity(0.45), .black.opacity(0)],
                                               startPoint: .bottom,
                                               endPoint: .top)
                            )
                        
                        , alignment: .bottom
                        )
            }.cornerRadius(12).padding(.horizontal)
            
            //individual card
            VStack(alignment: .trailing) {
                Image("macos_bg_ventura")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    
                // HOLY CONFUSING OVERLAY
                    .overlay(
                        HStack{
                            Spacer()
                            
                            Text("Ventura")
                                .foregroundColor(.white)
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .font(.title)
                            }
                            .frame(maxWidth: .infinity)
                            .padding([.bottom], 24)
                            .padding([.top], 40)
                            .padding(.horizontal)
                            .background(
                                LinearGradient(colors: [.black.opacity(0.45), .black.opacity(0)],
                                               startPoint: .bottom,
                                               endPoint: .top)
                            )
                        
                        , alignment: .bottom
                        )
            }.cornerRadius(12).padding(.horizontal)
            
            //individual card
            VStack(alignment: .trailing) {
                Image("macos_bg_monterey")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    
                // HOLY CONFUSING OVERLAY
                    .overlay(
                        HStack{
                            Spacer()
                            
                            Text("Monterey")
                                .foregroundColor(.white)
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .font(.title)
                            }
                            .frame(maxWidth: .infinity)
                            .padding([.bottom], 24)
                            .padding([.top], 40)
                            .padding(.horizontal)
                            .background(
                                LinearGradient(colors: [.black.opacity(0.45), .black.opacity(0)],
                                               startPoint: .bottom,
                                               endPoint: .top)
                            )
                        
                        , alignment: .bottom
                        )
            }.cornerRadius(12).padding(.horizontal)
        }
    }
}

struct CardTitlesView_Previews: PreviewProvider {
    static var previews: some View {
        CardTitlesView()
    }
}
