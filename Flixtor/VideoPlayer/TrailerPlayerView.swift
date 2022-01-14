//
//  TrailerPlayerView.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-13.
//

import SwiftUI
import VideoPlayer

struct TrailerPlayerView: View {
    var videoURL: URL?
    
    @Binding var playVideo: Bool
    
    var body: some View {
        if videoURL != nil {
            VideoPlayer(url: videoURL!, play: $playVideo)
        } else {
            Text("Could not load video")
        }
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerPlayerView(videoURL: exampleVideoURL, playVideo: .constant(true))
    }
}

