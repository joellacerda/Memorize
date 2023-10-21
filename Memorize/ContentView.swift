//
//  ContentView.swift
//  Memorize
//
//  Created by Joel Lacerda on 18/10/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "👽", "🎃", "🕷️"]
    
    var body: some View {
        HStack {
            ForEach(emojis, id: \.self) { emoji in
                CardView(content: emoji)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
