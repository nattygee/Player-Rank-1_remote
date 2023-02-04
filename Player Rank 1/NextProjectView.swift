//
//  NextProjView.swift
//  Player Rank 1
//
//  Created by Tim Green on 2023-02-04.
//

import SwiftUI

struct NextProjectView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("A blank page") {
                    Text("Check this page out")
                }
                NavigationLink("Another blank page") {
                    Text("Another page to look at")
                }
                NavigationLink("A red card") {
                    Image("red01")
                }
                NavigationLink("A red card") {
                    Image("red01")
                }
                NavigationLink("A red card") {
                    Image("red01")
                }
            }.navigationTitle("Next project")
        }
    }
}

struct NextProjView_Previews: PreviewProvider {
    static var previews: some View {
        NextProjectView()
    }
}
