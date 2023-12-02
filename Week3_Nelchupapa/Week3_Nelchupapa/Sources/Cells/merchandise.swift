//
//  merchandise.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/2/23.
//

import SwiftUI

struct merchandiseCell: View {
    
    var body: some View {
        ZStack {
          
            VStack {
               
                    
            }
            .frame(width: 176, height: 234)
            .background(Color(.merchandise))
            .cornerRadius(16)
            
            .overlay {
                Image("Nike-React-Frenzy")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(-33))
            }
        }
        
    }
}

#Preview {
    merchandiseCell()
}
