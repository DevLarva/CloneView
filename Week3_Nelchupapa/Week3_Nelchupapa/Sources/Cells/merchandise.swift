//
//  merchandise.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/2/23.
//

import SwiftUI

struct merchandiseCell: View {
    var shoe: Shoe
    var body: some View {
        VStack {
            ZStack{
                
                Rectangle()
                    .frame(width: 150,height: 180)
                    .cornerRadius(20)
                    .foregroundStyle(Color.merchandise)
                
                Image(shoe.mainimage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
                    .rotationEffect(Angle(degrees: -45))
                    .offset(x: -20,y:-45)
                
                HStack(spacing: 43){
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 15,height: 15)
                        Text(shoe.star)
                            .font(.subheadline)
                            .bold()
                            .padding(.trailing)
                        
                        HeartButton()
                            .padding(.bottom)
                    }
                    .foregroundColor(.white)
                    
                    
                    
                }
                .offset(y:65)
            }
            VStack {
                Text(shoe.name)
                    .foregroundStyle(Color.white)
                Text(shoe.price)
                    .foregroundStyle(Color.gray)
            }
        }
        
    }
}

#Preview {
    merchandiseCell(shoe:  Shoe(name: "Nike-React-Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160", color: ["Nike-React-Frenzy", "Nike-React-Frenzy"]))
}
