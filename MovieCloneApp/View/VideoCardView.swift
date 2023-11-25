//
//  VideoCardView.swift
//  MovieCloneApp
//
//  Created by 백대홍 on 11/25/23.
//

import SwiftUI

struct VideoCardView: View {
    var video: Video
    var body: some View {
        ZStack {
            ZStack(alignment: .bottomLeading) {
                // 이미지 : 비디오 썸네일 + 반투명한 검은색 막 씌우기
                ZStack {
                    Image(uiImage: (video.thumbnail))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                                            
                }
                
                // 플레이 기호
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(50)
            }
        }
    }
}

