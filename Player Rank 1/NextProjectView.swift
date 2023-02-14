//
//  NextProjView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-04.
//

import SwiftUI

struct NextProjectView: View {
    @State var tapCount = 0
    
    var body: some View {

            NavigationView {

            List {
                NavigationLink("HStack and VStacks", destination: TestingViews())
                NavigationLink("Cards with Titles overtop", destination: CardTitlesView())
                
                HStack {
                    Button ("Tap me:") {
                        tapCount += 3
                    }
                    Spacer()
                    Text("\(tapCount)")
                        .foregroundColor(Color.gray)
                }
            }.navigationTitle("Moeykens projects")
        }
    }
}

struct NextProjView_Previews: PreviewProvider {
    static var previews: some View {
        NextProjectView()
    }
}
