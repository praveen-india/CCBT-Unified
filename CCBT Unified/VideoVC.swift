//
//  VideoVC.swift
//  CCBT Unified
//
//  Created by Zaman on 4/12/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import MediaPlayer
class VideoVC: UIViewController {

    var moviePlayer:AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.playRemoteVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Play remote Video
    func playRemoteVideo(){
        
        let player = AVPlayer(url: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        let playerController = AVPlayerViewController()
        playerController.player = player
        self.present(playerController, animated: true) {
           playerController.player?.play()
        }
    }
    
    //MARK:- Play local video
    
    func playLocalVideo(){
        
        let videoURl = Bundle.main.path(forResource: "", ofType: "")
        let player = AVPlayer(url: URL(string: videoURl!)!)
        let playerController = AVPlayerViewController()
        playerController.player = player
        self.present(playerController, animated: true) {
            playerController.player?.play()
        }
        
    }
}
