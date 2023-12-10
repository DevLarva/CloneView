//
//  MainView.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/2/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                    ScrollView {
                        VStack {
                            headerView()
                            
                        }
                    }
                
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    VStack(spacing: -3) {
                        Image("Nikelogo")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding(.top)
                        Text("Collections")
                            .font(.title)
                            .foregroundStyle(Color.white)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.white)
                        .bold()
                }
            }
//            .zIndex(1)
        }
        
    }
}

#Preview {
    MainView()
}
