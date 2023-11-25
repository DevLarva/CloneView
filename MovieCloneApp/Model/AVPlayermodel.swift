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
    
    init(videoName: String) {
        self.videoName = videoName
        
        let url = Bundle.main.url(forResource: videoName, withExtension: "mp4")!
        let asset = AVURLAsset(url: url, options: nil)
        
        // thumnail(썸네일) 구하기
        var thumnailImage = UIImage(named: "defaultThumnail")
        let imgGenerator = AVAssetImageGenerator(asset: asset)
        do {
            let cgImage = try imgGenerator.copyCGImage(at: CMTime(value: 0, timescale: 1), actualTime: nil)
            thumnailImage = UIImage(cgImage: cgImage)
        } catch {
            print(error.localizedDescription)
        }
        self.thumbnail = thumnailImage!
        
        // duration(플레이타임) 구하기
        let duration: CMTime = asset.duration
        self.duration = Int(CMTimeGetSeconds(duration))
    }
}
