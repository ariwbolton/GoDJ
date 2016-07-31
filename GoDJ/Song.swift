//
//  Song.swift
//  GoDJ
//
//  Created by Elwood Bolton on 7/31/16.
//  Copyright © 2016 Ari Bolton. All rights reserved.
//

import Foundation
import UIKit

class Song {
    var songTitle: String
    var album: String
    var artist: String
    var albumArtwork: UIImage
    
    // TODO: Generalize
    init() {
        songTitle = "Helix"
        album = "Skin"
        artist = "Flume"
        albumArtwork = UIImage(named: "flume-skin") ?? UIImage(named: "defaultAlbumArtwork")!
    }
    
    init(songTitle: String, album: String, artist: String, albumArtwork: String) {
        self.songTitle = songTitle
        self.album = album
        self.artist = artist
        self.albumArtwork = UIImage(named: albumArtwork) ?? UIImage(named: "defaultAlbumArtwork")!
    }
}