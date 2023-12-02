//
//  ContentView.swift
//  Week3_Nelchupapa
//
//  Created by 백대홍 on 12/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("짜잔!!!!!!")
                    .font(.largeTitle)
                    .foregroundStyle(.yellow)
                    .rotation3DEffect(.degrees(25), axis: (x: 1, y: 0, z: 0))
                
                Text("정말 멋지군요!!!!!!!")
                    .font(.largeTitle)
                    .foregroundStyle(.green)
                    .rotation3DEffect(.degrees(-25), axis: (x: 1, y: 1, z: 0))
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}






// MARK: - 들어가기전..
/**
- 폴더링
 - Resource
    - Fonts
    - Assets
        
 - Sources
    - Constants
    - Views
    - Cells
    - Model(JSON?)
        - 신발(이미지, 이름, 가격, 별점, Color, 사이즈)
        - 360도는 어떻게?
 */
