//
//  MiddleView.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/10/23.
//

import SwiftUI

struct MiddleView: View {
    var shoe: Shoe
    @State private var selectedColor: String?
    
    var body: some View {
        
        HStack(spacing: -20) {
            VStack {
                Text("\(String(shoe.color.count)) Color")
                    .font(.title3)
                    .bold()
                    .padding()
                ForEach(shoe.color, id: \.self) { color in
                    Button(action: {
                        selectedColor = color
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20.0)
                                .frame(width: 98, height: 98)
                                .foregroundColor(selectedColor == color ? Color.detail1 : Color.clear)
                            
                            Image(color)
                                .resizable()
                                .frame(width: 110, height: 110)
                                .rotationEffect(.degrees(-28))
                                .offset(x: -10)
                        }
                    }
                }
            }
            
            ZStack {
                if let selectedColor = selectedColor,
                   var index = shoe.color.firstIndex(of: selectedColor) {
                    
                    RoundedRectangle(cornerRadius: 75)
                        .frame(width: 220, height: 280)
                        .foregroundStyle(Color.detail2)
                        .offset(x: 50)
                    
                    Image(shoe.color[index])
                        .resizable()
                        .frame(width: 300, height: 300)
                        .scaledToFit()
                        .rotationEffect(.degrees(-54))
//                        .offset(x: 50, y: -50)
                    
                   
                }
            }/*.padding(.horizontal)*/
        }
        .onAppear {
                    if let firstColor = shoe.color.first {
                        selectedColor = firstColor
                    }
                }
    }
    
}


#Preview {
    MiddleView(shoe: Shoe(name: "React Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160", color: ["Nike-React-Frenzy", "Adapt BB 2.0"]))
}
