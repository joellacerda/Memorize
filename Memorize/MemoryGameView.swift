//
//  MemoryGameView.swift
//  Memorize
//
//  Created by Joel Lacerda on 18/10/23.
//

import SwiftUI

struct MemoryGameView: View {
    let halloweenTheme = ["👻", "👽", "🎃", "🧛", "🫎", "🐍", "👻", "👽", "🎃", "🧛", "🫎", "🐍"]
    let vehiclesTheme = ["🚗", "🏍️", "✈️", "⛵️", "🚀", "🚜", "🚗", "🏍️", "✈️", "⛵️", "🚀", "🚜"]
    let animalsTheme = ["🐶", "🐱", "🐭", "🐰", "🐻", "🦁", "🐶", "🐱", "🐭", "🐰", "🐻", "🦁"]
    
    @State private var selectedEmojis: [String] = []
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
                
            cards
            Spacer()
            cardThemeAdjuster
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(selectedEmojis, id: \.self) { emoji in
                CardView(content: emoji)
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    
    var cardThemeAdjuster: some View {
        HStack {
            Spacer()
            cardThemeAdjuster(to: halloweenTheme, symbol: "moon.stars.fill")
            Spacer()
            cardThemeAdjuster(to: vehiclesTheme, symbol: "car.fill")
            Spacer()
            cardThemeAdjuster(to: animalsTheme, symbol: "pawprint.fill")
            Spacer()
        }
        .font(.largeTitle)
    }
    
    func cardThemeAdjuster(to theme: [String], symbol: String) -> some View {
        Button {
            selectedEmojis = theme.shuffled()
        } label: {
            Image(systemName: symbol)
        }
    }
}

#Preview {
    MemoryGameView()
}
