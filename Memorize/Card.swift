//
//  Card.swift
//  Memorize
//
//  Created by Joel Lacerda on 23/10/23.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    let content: String
    @State var isFaceUp: Bool = false
    let color: Color
}
