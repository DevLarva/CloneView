//
//  AVPlayermodel.swift
//  MovieCloneApp
//
//  Created by 백대홍 on 11/24/23.
//

import Foundation
import AVFoundation
import AVKit

class Video {
    let videoName: String
    let thumbnail: UIImage
    let duration: Int
    
    init(videoName: String, thumbnail: UIImage, duration: Int) {
        self.videoName = videoName
        self.thumbnail = thumbnail
        self.duration = duration
    }
}
