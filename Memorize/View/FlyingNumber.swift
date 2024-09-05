//
//  FlyingNumber.swift
//  Memorize
//
//  Created by Joel Lacerda on 23/08/24.
//

import SwiftUI

struct FlyingNumber: View {
    @State private var offset: CGFloat = 0
    let number: Int
    
    var body: some View {
        if number != 0 {
            Text(number, format: .number.sign(strategy: .always()))
                .font(.largeTitle)
                .foregroundStyle(number < 0 ? .red : .green)
                .shadow(color: .black, radius: 1.5, x: 1, y: 1)
                .offset(x: 0, y: offset)
                .opacity(offset != 0 ? 0 : 1)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.5)) {
                        offset = number < 0 ? 50 : -50
                    }
                }
                .onDisappear {
                    offset = 0
                }
        }
    }
}

#Preview {
    FlyingNumber(number: 2)
}
