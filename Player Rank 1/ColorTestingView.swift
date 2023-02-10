//
//  ColorTesting.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-06.
//

import SwiftUI

struct ColorTestingView: View {
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
                    print("ohaio")
                } label: {
                    HStack {
                        Image(systemName: "pencil")
                        Text("Learn more")
                    }.padding(12.0)
                }.background(Color.theme.accentColor)
                    .foregroundColor(Color.theme.reversedTextColor)
                    .cornerRadius(12)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(8.0)
            Spacer()
                HStack {
                    Button("Delete") {
                        
                    }.buttonStyle(MultiActionBtnStyle(actionType: .delete))
                    Spacer()
                    Button("Cancel") {
                        
                    }.buttonStyle(MultiActionBtnStyle(actionType: .cancel))
                    Button("Confirm") {
                        
                    }.buttonStyle(MultiActionBtnStyle(actionType: .confirm))
                }.padding(12.0)
            Spacer()
                Button {
                    print("hey this worked")
                } label: {
                    HStack {
                        Image(systemName: "target")
                        Text("Click this")
                    }.padding(12.0)
                }.buttonStyle(PrimaryBtnStyle())
             
                Button("Other button") {}.buttonStyle(PrimaryBtnStyle(bgColor: .red, fgColor: .white, font: .body, padding: 12.0))

            }.padding()
        }
    }
}

struct ColorTesting_Previews: PreviewProvider {
    static var previews: some View {
        ColorTestingView()
    }
}
