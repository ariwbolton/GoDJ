//
//  CurrentSongViewController.swift
//  GoDJ
//
//  Created by Elwood Bolton on 7/31/16.
//  Copyright © 2016 Ari Bolton. All rights reserved.
//

import UIKit

class CurrentSongViewController: UIViewController {
    var CurrentSong: Song! {
        didSet {
            albumArtwork.image  = CurrentSong.albumArtwork
            songTitle.text      = CurrentSong.songTitle
            artist.text         = CurrentSong.artist
            album.text          = CurrentSong.album
            
        }
    }
    
    @IBOutlet weak var albumArtwork: UIImageView!
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var artist: UILabel!
    @IBOutlet weak var album: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CurrentSong = Song()        // Defaults to Flume song for now
    }
    
    
    // TODO: Figure out how this is used
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
