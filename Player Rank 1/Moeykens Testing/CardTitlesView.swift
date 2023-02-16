//
//  CardTitlesView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-13.
//

import SwiftUI

struct CardTitlesView: View {
    var body: some View {
    

        VStack(alignment: .leading, spacing: 16) {
            Text("Card Titles Practice").padding([.horizontal], 16).font(.largeTitle).fontWeight(.black).frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView {
                
                Rectangle().fill(Color.white.opacity(0))
                Text("Mac Wallpapers").padding([.horizontal], 16).frame(maxWidth: .infinity, alignment: .leading).font(.title3).fontWeight(.bold).foregroundColor(Color.theme.primaryTextColor)
                
                //alignment using hstack + spacer
                HStack(spacing: 4) {
                    Text("Mac Wallpapers").padding([.horizontal], 16).lineLimit(1)
                    Spacer().frame(height: 4.0).background(Color.red.opacity(0.3))
                    Spacer().frame(height: 4.0).background(Color.red.opacity(0.3))
                    Spacer().frame(height: 4.0).background(Color.red.opacity(0.3))
                }
                
                // alignment using frame width infinity + alignment
                Text("Mac Wallpapers").padding([.horizontal], 16).frame(maxWidth: .infinity, alignment: .leading)
                
                Divider().padding([.bottom], 16)
                //individual card
                VStack(alignment: .trailing) {
                    Image("macos_bg_snowleopard")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        
                    // HOLY CONFUSING OVERLAY
                        .overlay(
                            HStack{
                                Spacer()
                                
                                Text("Snow Leopard")
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
                    Image("macos_bg_cheetah")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        
                    // HOLY CONFUSING OVERLAY
                        .overlay(
                            HStack{
                                Spacer()
                                
                                Text("Cheetah")
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
            //.padding([.top], 24)
            
            
        }
    }
}

struct CardTitlesView_Previews: PreviewProvider {
    static var previews: some View {
        CardTitlesView()
    }
}
