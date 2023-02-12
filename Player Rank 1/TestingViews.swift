//
//  TestingViews.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-10.
//

import SwiftUI

struct TestingViews: View {
    var body: some View {
        ZStack {
            //Color.theme.backgroundColor.ignoresSafeArea()
            VStack(alignment: .trailing, spacing: 16) {
                //Image("1HC_logo_full-05")
                  //  .opacity(0.8)
                    //.padding(16)
                    //.background(Color.green.opacity(0.8))
                    //.background(Color.yellow.opacity(0.3))
                    //.cornerRadius(12.0)
                    //.overlay(Image(systemName: "globe").font(.largeTitle).foregroundColor(Color.white))
                
                //  BLUE SQUARE STARTS HERE
                VStack(alignment: .leading, spacing: 8) {
                    Text("Hello").padding(.horizontal)
                    Divider().overlay(.blue).opacity(0.15)
                    Text("My name's Nat").padding(.horizontal)
                    Divider().overlay(.blue).opacity(0.15)
                    Text("I enjoy learning about programming").padding(.horizontal)
                    Divider().overlay(.blue).opacity(0.15)
                    Text("Among other things").padding(.horizontal)
                    Divider().overlay(.blue).opacity(0.15)
                }
                .padding(.vertical)
                    .background(RoundedRectangle(cornerRadius: 12.0)
                        .foregroundColor(.black).opacity(0.4)
                    )
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                
                // SECOND BLUE SQUARE HERE
                VStack(alignment: .trailing, spacing: 8.0) {
                    Spacer()
                    Text("Let's try this again")
                    Text("sub text here").foregroundColor(.gray)
                    Image(systemName: "arrow.right")
                    Divider().opacity(0)
                }
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 12.0)
                        .foregroundColor(.black).opacity(0.4)
                )
                // ANOTHER BLUE SQUARE
                HStack() {
                    Rectangle()
                        .foregroundColor(Color.yellow)
                        .frame(width: 8)
                    Spacer()
                    VStack {
                        HStack(alignment: .lastTextBaseline) {
                            Text("Weight(lbs)").foregroundColor(.gray)
                            Spacer()
                            Text("182").font(.system(size: 64)).fontWeight(.bold)
                        }
                        HStack(alignment: .lastTextBaseline) {
                            Text("Height(inches)").foregroundColor(.gray)
                            Spacer()
                            Text("74").font(.system(size: 64)).fontWeight(.bold)
                        }
                        HStack(alignment: .lastTextBaseline) {
                            Text("Normal weight class fot this line of copyNormal weight class fot this line of copy").foregroundColor(.gray)
                            Spacer()
                            Text("44").font(.system(size: 64)).fontWeight(.bold)
                        }
                    }
                        .lineLimit(1)
                        .padding()
                        .foregroundColor(.yellow)

                    Spacer()
                    //.background(RoundedRectangle(cornerRadius: 12.0).foregroundColor(.blue).opacity(0.1))
                }
                    .frame(maxWidth: .infinity)
                    .background(Color.black.opacity(0.4))
                    .cornerRadius(8.0)
            }.padding()
        }
        .background(
            Image("macOS_background")
            .resizable()
            .ignoresSafeArea()
        )
        .foregroundColor(Color.theme.reversedTextColor)
    }
}

struct TestingViews_Previews: PreviewProvider {
    static var previews: some View {
        TestingViews()
    }
}
