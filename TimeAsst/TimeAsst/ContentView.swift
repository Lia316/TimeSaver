//
//  ContentView.swift
//  TimeAsst
//
//  Created by 리아 on 2022/05/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("달력 뷰")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("달력")
                }
            Text("투두 뷰")
                .tabItem {
                    Image(systemName: "checkmark.circle")
                        .environment(\.symbolVariants, .none)
                    Text("할 일")
                }
            Text("로드맵 뷰")
                .tabItem {
                    Image(systemName: "signpost.right")
                        .environment(\.symbolVariants, .none)
                    Text("로드맵")
                }
            Text("메모 뷰")
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("메모")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
