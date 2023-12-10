//
//  AddBag.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/7/23.
//

import SwiftUI

struct AddBag: View {
    var body: some View {
        ZStack{
            VStack {
                RoundedRectangle(cornerRadius: 55.0)
                    .frame(width: 380, height: 100)
            }
            HStack(alignment:.center) {
                Image("360-icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                Spacer().frame(width: 40)
                
                HStack {
                    Image(systemName: "bag")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color.white)
                        .padding(.trailing)
                        .padding(.leading,7)
                        
                    
                    Text("Add To Bag")
                        .foregroundStyle(Color.white)
                        .font(.title2)
                        .bold()
                }
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .frame(width: 180, height: 70)
                .padding(.horizontal, 24)
                .padding(.vertical, 0)
                .background(.detail1)
                .cornerRadius(50)
            }
            
        }
    }
}

#Preview {
    AddBag()
}
