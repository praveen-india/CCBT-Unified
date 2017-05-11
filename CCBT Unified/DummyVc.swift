//
//  DummyVc.swift
//  CCBT Unified
//
//  Created by Prashant on 24/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class DummyVc: UIViewController {

    var videoURL : String?
    var videoPlayer : AVPlayer?
    let playerViewController = AVPlayerViewController()
    
    @IBOutlet weak var view2: UIView!
    var view1 =  UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title   =  "Home"
//        self.loadVideo()
    }

    @IBOutlet weak var videoView3: UIView!
    @IBOutlet weak var videoView1: UIView!
    @IBOutlet weak var videoView2: UIView!
    
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.videoPlayer?.pause()
        self.videoPlayer = nil
        self.playerViewController.removeFromParentViewController()
        print("--------------Video player set to nil and it disapper----------")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.videoView_1_Frame_video()
        self.videoView_2_Frame_video()
        self.videoView_3_Frame_video()
    }
    /*
    func loadVideo()
    {
        videoURL    =   "http://techslides.com/demos/sample-videos/small.mp4"
        let url     =   URL(string : videoURL!)
        videoPlayer = AVPlayer(url: url!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = videoPlayer
        NotificationCenter.default.addObserver(self, selector: #selector(self.playerDidReachEndNotificationHandler), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer!.currentItem)
        playerViewController.showsPlaybackControls  =   true
        self.addChildViewController(playerViewController)
        videoPlayer?.play()
    }
   */
    func playerDidReachEndNotificationHandler(notification : NSNotification){
        print("playerDidReachEndNotification")
        videoPlayer?.seek(to: kCMTimeZero)
        videoPlayer?.pause()
        videoPlayer?.actionAtItemEnd = AVPlayerActionAtItemEnd.pause
        self.videoPlayer = nil
        print("-------------Video reaches to its end---------------")      
    }
   
    func videoView_1_Frame_video(){
        videoURL    =   "http://techslides.com/demos/sample-videos/small.mp4"
        let url     =   URL(string : videoURL!)
        videoPlayer = AVPlayer(url: url!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = videoPlayer
        NotificationCenter.default.addObserver(self, selector: #selector(self.playerDidReachEndNotificationHandler), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer!.currentItem)
        playerViewController.showsPlaybackControls  =   true
        self.addChildViewController(playerViewController)
        videoPlayer?.play()
        videoView1.layoutIfNeeded()
        playerViewController.view.frame =   CGRect(x: 0, y: 0, width: self.videoView1.frame.size.width, height: self.videoView1.frame.size.height)
        self.videoView1.addSubview(playerViewController.view)
    }
    
    func videoView_2_Frame_video() {
        videoURL    =   "http://techslides.com/demos/sample-videos/small.mp4"
        let url     =   URL(string : videoURL!)
        videoPlayer = AVPlayer(url: url!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = videoPlayer
        NotificationCenter.default.addObserver(self, selector: #selector(self.playerDidReachEndNotificationHandler), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer!.currentItem)
        playerViewController.showsPlaybackControls  =   true
        self.addChildViewController(playerViewController)
        videoPlayer?.play()
        videoView2.layoutIfNeeded()
        playerViewController.view.frame =   CGRect(x: 0, y: 0, width: self.videoView2.frame.size.width, height: self.videoView2.frame.size.height)
        self.videoView2.addSubview(playerViewController.view)
    }
    
    func videoView_3_Frame_video() {
        videoURL    =   "http://techslides.com/demos/sample-videos/small.mp4"
        let url     =   URL(string : videoURL!)
        videoPlayer = AVPlayer(url: url!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = videoPlayer
        NotificationCenter.default.addObserver(self, selector: #selector(self.playerDidReachEndNotificationHandler), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer!.currentItem)
        playerViewController.showsPlaybackControls  =   true
        self.addChildViewController(playerViewController)
        videoPlayer?.play()
        videoView3.layoutIfNeeded()
        playerViewController.view.frame =   CGRect(x: 0, y: 0, width: self.videoView3.frame.size.width, height: self.videoView3.frame.size.height)
        self.videoView3.addSubview(playerViewController.view)
    }

}
