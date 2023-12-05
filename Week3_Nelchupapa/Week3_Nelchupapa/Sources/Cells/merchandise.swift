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
        ZStack {
          
            VStack {
               Text("sdasd")
                    .foregroundStyle(Color.blue)
                    
            }
            .frame(width: 176, height: 234)
            .background(Color(.merchandise))
            .cornerRadius(16)
            .zIndex(1)
            
            .overlay {
                VStack {
                    
                    Image(shoe.mainimage)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .rotationEffect(.degrees(-33))
                        .offset(/*@START_MENU_TOKEN@*/CGSize(width: 10.0, height: 10.0)/*@END_MENU_TOKEN@*/)
                       
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundStyle(Color.white)
                        Text(String(shoe.star))
                            .foregroundStyle(Color.white)
                        Spacer()
                        VStack {
                           Image(systemName: "heart")
                                
                        }
                        
                        .frame(width: 40, height: 40)
                        .background(Color.white)
                        .cornerRadius(16)
                        .shadow(radius: 10)
                        .padding(.horizontal, 17)
                        .padding(.bottom, 17)
                    }
                    .padding(.bottom)
                    
                    
                    
                }
            }
        }
        
    }
}

#Preview {
    merchandiseCell(shoe:  Shoe(name: "Nike-React-Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160"))
}
