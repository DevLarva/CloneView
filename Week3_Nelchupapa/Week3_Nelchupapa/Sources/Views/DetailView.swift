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
            
           
            
            VStack(alignment: .leading) {
                DetailHeaderView(shoe:  Shoe(name: "React Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160", color: ["Nike-React-Frenzy", "Nike-React-Frenzy"]))
                
              
                
                
                HStack {
                    MiddleView(shoe: Shoe(name: "React Frenzy", mainimage: "Nike-React-Frenzy", othercolorimage: "Nike-React-Frenzy", star: "4.8", price: "160", color: ["Nike-React-Frenzy", "Adapt BB 2.0"]))
                }
                
                
                    SizeCell()
                        .padding(.leading)
                    
                    AddBag()
                
                    
            }
            
            
        }
        
    }
}

#Preview {
    DetailView()
}
