//
//  DetailHeaderView.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/5/23.
//

import SwiftUI

struct DetailHeaderView: View {
    var shoe: Shoe
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text(shoe.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                //하트 자리
                Spacer()
                HeartButton(backgroundColor:
                                Color.backHeart)
            }
            
            HStack {
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.detail1)
                
                Text(String(shoe.star))
                    .bold()
                    .font(.title3)
                
                Text("reviews")
            }
            Text("$\(String(shoe.price))")
                .font(.title2)
                .bold()
        }
        .padding(.horizontal)
    }
}

#Preview {
    DetailHeaderView(shoe:  Shoe(name: "React Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160", color: ["Nike-React-Frenzy", "Nike-React-Frenzy"]))
}
