//
//  MemoryGameView.swift
//  Memorize
//
//  Created by Joel Lacerda on 18/10/23.
//

import SwiftUI

struct ContentView: View {
    
    let emojis = ["👻", "👽", "🎃", "🧛", "🫎", "🐍", "🪳", "🦂", "🧟", "🧙", "👹", "😱"]
    
    var body: some View {
        ScrollView {
            cards
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]) {
            ForEach(emojis, id: \.self) { emoji in
                CardView(content: emoji)
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
}

#Preview {
    ContentView()
}
