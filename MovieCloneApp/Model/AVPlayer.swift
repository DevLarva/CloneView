//
//  AVPlayer.swift
//  MovieCloneApp
//
//  Created by 백대홍 on 11/24/23.
//

import SwiftUI
import AVKit

class MoviePlayer: ObservableObject {
    var player = AVPlayer()
    
    func play() {
        player.play()
    }
    
    func pause() {
        player.pause()
    }
}
