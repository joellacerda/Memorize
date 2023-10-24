//
//  Themes.swift
//  Memorize
//
//  Created by Joel Lacerda on 23/10/23.
//

import SwiftUI


enum Theme {
    case halloween, vehicles, animals
}

func getThemeEmojis(from theme: Theme) -> [String] {
    switch theme {
    case .halloween:
        ["👻", "👽", "🎃", "🧛", "🫎", "🐍", "👻", "👽", "🎃", "🧛", "🫎", "🐍"]
    case .vehicles:
        ["🚗", "🏍️", "✈️", "⛵️", "🚀", "🚜", "🚗", "🏍️", "✈️", "⛵️", "🚀", "🚜"]
    case .animals:
        ["🐶", "🐱", "🐭", "🐰", "🐻", "🦁", "🐶", "🐱", "🐭", "🐰", "🐻", "🦁"]
    }
}

func getThemeColor(from theme: Theme) -> Color {
    switch theme {
    case .halloween:
        Color(.orange)
    case .vehicles:
        Color(.yellow)
    case .animals:
        Color(.blue)
    }
}
