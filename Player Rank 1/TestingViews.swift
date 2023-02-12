//
//  TestingViews.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-10.
//

import SwiftUI

struct TestingViews: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 16) {
            Image("1HC_logo_full-05")
                .opacity(0.8)
                .padding(16)
                .background(Color.green.opacity(0.8))
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(12.0)
                .overlay(Image(systemName: "globe").font(.largeTitle).foregroundColor(Color.white))
            
            //  BLUE SQUARE STARTS HERE
            VStack(alignment: .leading, spacing: 8) {
                Text("Hello")
                Divider()
                Text("hi")
                Divider()
                Text("hi")
                Divider()
                Text("hi")
                Text("hi")
                Image(systemName: "pencil")
            }.padding()
                .font(.title3)
                .foregroundColor(.blue)
                .background(RoundedRectangle(cornerRadius: 12.0)
                    .foregroundColor(.blue).opacity(0.1)
                )
            
            // SECOND BLUE SQUARE HERE
            VStack(alignment: .trailing, spacing: 8.0) {
                Text("Let's try this again")
                Text("sub text here").foregroundColor(.gray)
                
                Image(systemName: "arrow.right")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12.0)
                    .foregroundColor(.blue).opacity(0.1)
            )
            // ANOTHER BLUE SQUARE
            GeometryReader { geometry in
                VStack() {
                    HStack(alignment: .bottom, spacing: 24.0) {
                        Spacer()
                        Text("Text 1").padding()
                        Text("Text 2").padding()
                        Text("Text 3").padding()
                        Spacer()
                    }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12.0).foregroundColor(.blue).opacity(0.1).padding(16.0))
                }
            }
            HStack(alignment: .top) {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
            }.padding()
                .background(RoundedRectangle(cornerRadius: 12.0).foregroundColor(.blue).opacity(0.1))
                .frame(maxWidth: .infinity)
                .padding(16.0)
        }
    }
}

struct TestingViews_Previews: PreviewProvider {
    static var previews: some View {
        TestingViews()
    }
}
