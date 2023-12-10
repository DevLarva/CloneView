//
//  HeartButton.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/5/23.
//

import SwiftUI

struct HeartButton: View {
    @State private var isLiked = false
    var backgroundColor: Color

    init(backgroundColor: Color = .clear) {
        self.backgroundColor = backgroundColor
    }

    var body: some View {
        Button(action: {
            self.isLiked.toggle()
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(backgroundColor)
                    .frame(width: 50, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .foregroundColor(isLiked ? .red : .gray)
                
            }
        }
    }
}


#Preview {
    HeartButton()
}
