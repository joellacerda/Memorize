//
//  CardView.swift
//  Memorize
//
//  Created by Joel Lacerda on 19/10/23.
//

import SwiftUI

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 2)
                .foregroundStyle(.orange)
            Text("👻")
                .font(.largeTitle)
            if isFaceUp == false {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.orange)
                Image(systemName: "brain.filled.head.profile")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    CardView()
        .padding()
}
