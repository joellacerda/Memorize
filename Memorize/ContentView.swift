//
//  ContentView.swift
//  Memorize
//
//  Created by Joel Lacerda on 18/10/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "👽", "🎃", "🕷️", "👹", "🤖", "🧛", "🧟", "🫎", "🪳", "🦂", "🐍"]
    @State var cardCount = 4
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjuster
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount, id: \.self) { i in
                CardView(content: emojis[i])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
    
    var cardCountAdjuster: some View {
        HStack {
            cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
            Spacer()
            cardCountAdjuster(by: 1, symbol: "rectangle.stack.badge.plus.fill")
        }
        .font(.largeTitle)
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button {
            cardCount += offset
        } label: {
            Image(systemName: symbol)
        }
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
}

#Preview {
    ContentView()
}
