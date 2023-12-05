//
//  DetailView.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/5/23.
//

import SwiftUI

struct DetailView: View {
    var shoe: [Shoe] = shoesData
    var body: some View {
        VStack {
            DetailHeaderView(shoe:  Shoe(name: "React Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160"))
        }
        .padding()
    }
}

#Preview {
    DetailView()
}
