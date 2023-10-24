//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Joel Lacerda on 24/10/23.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
