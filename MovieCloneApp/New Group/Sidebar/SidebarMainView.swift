//
//  SidebarMainView.swift
//  MovieCloneApp
//
//  Created by 백대홍 on 11/23/23.
//

import SwiftUI

struct SidebarMainView: View {
    @Binding var presendSideMenu: Bool
    var body: some View {
        VStack {
            HStack {
                Button {
                    presendSideMenu.toggle()
                
                } label: {
                    Image(systemName: "menu")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
                Spacer()
                
            }
            Spacer()
            Text("Home View")
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    SidebarMainView(presendSideMenu: .constant(true))
}
