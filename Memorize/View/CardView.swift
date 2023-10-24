//
//  CardView.swift
//  Memorize
//
//  Created by Joel Lacerda on 19/10/23.
//

import SwiftUI

struct CardView: Identifiable, View {
    var id = UUID()
    let content: String
    let base = RoundedRectangle(cornerRadius: 12)
    @State var isFaceUp = false
   
    
    var body: some View {
        ZStack {
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            
            
            Group {
                base.fill(.orange)
                base.strokeBorder(lineWidth: 2)
                Image(systemName: "brain.filled.head.profile")
                    .font(.largeTitle)
            }
            .opacity(isFaceUp ? 0 : 1)
            
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    CardView(content: "👻")
        .padding()
}
