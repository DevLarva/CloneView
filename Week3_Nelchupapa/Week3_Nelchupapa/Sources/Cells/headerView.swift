//
//  headerView.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/2/23.
//

import SwiftUI

struct headerView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            HStack(spacing: 16) {
                Text("Shoes")
                    .foregroundStyle(Color.white)
                
                Text("Clothing")
                    .foregroundStyle(Color.white)
                
                Image("slider-01")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
    }
}

#Preview {
    headerView()
}


