//
//  SizeCell.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/7/23.
//

import SwiftUI

struct SizeCell: View {
    let items = ["6", "6.5", "7.0", "7.5", "8.0"]
    @State private var selected = "6"
    var body: some View {
        HStack {
            Text("Sizes")
                .font(.title3)
                .bold()
                .padding(.trailing)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(items, id: \.self) { item in
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(selected == item ? .detail1 : .detail3)
                            .frame(width: 50, height: 50)
                            
                            .overlay(
                                Text(item)
                                    .foregroundColor(.black)
                                    .bold()
                                    .font(.subheadline)
                                    
                            )
                            .onTapGesture {
                                selected = item
                            }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    SizeCell()
}
