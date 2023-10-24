//
//  MemoryGameView.swift
//  Memorize
//
//  Created by Joel Lacerda on 18/10/23.
//

import SwiftUI

struct MemoryGameView: View {
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
    
    @State private var deck: [CardView] = []
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(0..<12, id: \.self) { i in
                CardView(content: selectedEmojis.0[i], color: selectedEmojis.2, isFaceUp: false)
                    .scaledToFit()
            }
            
        }
    }
    
    
    
    let halloweenTheme = (emojis: ["👻", "👽", "🎃", "🧛", "🫎", "🐍", "👻", "👽", "🎃", "🧛", "🫎", "🐍"], name: "Halloween", color: Color(.orange))
    let vehiclesTheme = (emojis: ["🚗", "🏍️", "✈️", "⛵️", "🚀", "🚜", "🚗", "🏍️", "✈️", "⛵️", "🚀", "🚜"], name: "Vehicles", color: Color(.yellow))
    let animalsTheme = (emojis: ["🐶", "🐱", "🐭", "🐰", "🐻", "🦁", "🐶", "🐱", "🐭", "🐰", "🐻", "🦁"], name: "Animals", color: Color(.green))
    
    @State private var selectedEmojis: ([String], String, Color) = (emojis: ["👻", "👽", "🎃", "🧛", "🫎", "🐍", "👻", "👽", "🎃", "🧛", "🫎", "🐍"], name: "Halloween", color: Color(.orange))
    
    var cardThemeAdjuster: some View {
        HStack {
            Spacer()
            cardThemeAdjuster(to: halloweenTheme.emojis, name: halloweenTheme.name, symbol: "moon.stars.fill", color: halloweenTheme.color)
            Spacer()
            cardThemeAdjuster(to: vehiclesTheme.emojis, name: vehiclesTheme.name, symbol: "car.fill", color: vehiclesTheme.color)
            Spacer()
            cardThemeAdjuster(to: animalsTheme.emojis, name: animalsTheme.name, symbol: "pawprint.fill", color: animalsTheme.color)
            Spacer()
        }
        .font(.largeTitle)
    }
    
    func cardThemeAdjuster(to theme: [String], name: String, symbol: String, color: Color) -> some View {
        Button {
            selectedEmojis.0 = theme.shuffled()
            selectedEmojis.2 = color
        } label: {
            VStack(spacing: 10) {
                Image(systemName: symbol)
                Text(name)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    MemoryGameView()
}
