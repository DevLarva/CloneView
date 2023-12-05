//
//  HeartButton.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/5/23.
//

import SwiftUI


struct HeartButton: View {
    @State private var isLiked = false
    var borderColor: Color

    init(borderColor: Color = .gray) {
        self.borderColor = borderColor
    }

    var body: some View {
        Button(action: {
            self.isLiked.toggle()
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(borderColor, lineWidth: 2)
                    .frame(width: 50, height: 50)
                
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .foregroundColor(isLiked ? .red : .gray)
            }
        }
    }
}

#Preview {
    HeartButton()
}
