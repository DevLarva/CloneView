//
//  SeachView.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/3/23.
//

import SwiftUI

struct SeachView: View {
    @State private var searchtext: String = "Search..."
    var body: some View {
        
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
            
            TextField("", text: $searchtext)
                .foregroundColor(.gray)
        }
        .padding(.leading)
        .frame(width: 138, height: 44)
        .background(Color(.merchandise))
        .clipShape(
            .rect(topLeadingRadius: 10, bottomLeadingRadius: 30, bottomTrailingRadius: 10, topTrailingRadius: 10)

        )
    }
}

#Preview {
    SeachView()
}
