//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Joel Lacerda on 24/10/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = ["👻", "👽", "🎃", "🧛", "🕸️", "🐍", "🪳", "🦂", "🧟", "🧙", "👹", "😱"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: emojis.count) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    var color: Color {
        .orange
    }
    
    var score: Int {
        model.score
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
