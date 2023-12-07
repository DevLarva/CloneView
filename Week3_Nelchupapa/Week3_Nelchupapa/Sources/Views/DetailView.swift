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
        ZStack(alignment:.trailing) {
            Color.detail3.ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 75)
                .frame(width: 300, height: 380)
                .foregroundStyle(Color.detail2)
                .offset(x: 50)
            
            VStack {
                DetailHeaderView(shoe:  Shoe(name: "React Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160"))
                
                
                Spacer()
                
                SizeCell()
                //AddBag()
            }
            .padding()
        }
        
    }
}

#Preview {
    DetailView()
}
