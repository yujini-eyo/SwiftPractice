//
//  ContentView.swift
//  p1
//
//  Created by yujin on 2/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .fontWidth(.expanded)
                .fontWeight(.bold)
            Text("Hello, world!11")
                .fontWidth(.expanded)
                .fontWeight(.bold)
            Text("Hello, world!22")
                .fontWidth(.expanded)
                .fontWeight(.bold)
            Button("버튼", action: {
                buttonF()
            })
        }
        .padding()
    }
    
    func buttonF() {
        print("click")
    }
}

#Preview {
    ContentView()
}
