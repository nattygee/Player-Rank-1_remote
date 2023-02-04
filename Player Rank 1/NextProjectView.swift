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
                HStack {
                    Button ("Tap me:") {
                        tapCount += 3
                    }
                    Spacer()
                    Text("\(tapCount)")
                        .foregroundColor(Color.gray)
                }
                GeometryReader { geo in
                    HStack {
                            Button {
                                tapCount += 4
                            } label: {
                                Text("Click here")
                                    .padding()
                            }
                            .frame(width: geo.size.width * 0.5)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(24)
                    }.padding(.leading, geo.size.width/4)
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
