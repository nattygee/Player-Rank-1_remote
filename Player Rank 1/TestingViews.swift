//
//  TestingViews.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-10.
//

import SwiftUI

struct TestingViews: View {
    var body: some View {
        Image("1HC_logo_full-05")
            .opacity(0.8)
            .padding(16)
            .background(Color.green.opacity(0.8))
            .background(Color.yellow.opacity(0.3))
            .cornerRadius(12.0)
            .overlay(Image(systemName: "globe").font(.largeTitle).foregroundColor(Color.white))
    }
}

struct TestingViews_Previews: PreviewProvider {
    static var previews: some View {
        TestingViews()
    }
}
