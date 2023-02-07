//
//  ColorTesting.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-06.
//

import SwiftUI

struct ColorTesting: View {
    var body: some View {
        ZStack {
            Color.theme.backgroundColor
                .ignoresSafeArea()
            VStack {
                Text("This is the title")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.theme.primaryTextColor)
                    .multilineTextAlignment(.center)
                Text("When to know when to go")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.primaryTextColor)
                    .padding(2)
                    .multilineTextAlignment(.center)
                Text("This is the text where you read it and say, 'Damn, that's a smart man. innit.")
                    .foregroundColor(Color.theme.primaryTextColor)
                    .multilineTextAlignment(.center)
                
                Text("- a next man")
                    .font(.callout)
                    .foregroundColor(Color.theme.secondaryTextColor)
                    .multilineTextAlignment(.trailing)
                    .opacity(0.5)
                Button {
                    
                } label: {
                    Text("Learn more")
                        .padding()
                        .foregroundColor(Color.theme.reversedTextColor)
                        .fontWeight(.bold)
                }
                .foregroundColor(Color.theme.primaryTextColor)
                .cornerRadius(40)
                .background(Color.theme.accentColor)
                .padding(2)
                

                
                
                    
            Spacer()
            }.padding()
        }
    }
}

struct ColorTesting_Previews: PreviewProvider {
    static var previews: some View {
        ColorTesting()
    }
}
