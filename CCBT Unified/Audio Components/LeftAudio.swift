//
//  LeftAudio.swift
//  CCBT Unified
//
//  Created by Praveen on 02/05/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class LeftAudio: UIViewController {

    var audioLink:String?
    var avAsset = AVAsset()
    var updater: CADisplayLink?
    
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var timeRemaining: UILabel!
    @IBOutlet weak var timeElapsed: UILabel!
    var player:AVAudioPlayer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if audioLink    !=  nil {
           self.playAudio()
        }
        
        // Do any additional setup after loading the view.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    
    func playAudio(){
        updater =   CADisplayLink(target: self, selector: #selector(RightAudio.trackAudio))
        updater?.frameInterval  =   1
        updater?.add(to: .current, forMode: .commonModes)
        let url = URL(string:audioLink!)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url!)
            self.player = sound
            sound.numberOfLoops = 1
            sound.prepareToPlay()
            sound.delegate  =   self as? AVAudioPlayerDelegate
            sound.play()
            self.timeElapsed?.text    =   "\(sound.currentTime)"
            
        } catch {
            print("error loading file")
            // couldn't load file :(
        }
    }

    
    
    func trackAudio(){
        let normalizedTime  =   Float((player?.currentTime)!*100.0/(player?.duration)!)
        self.progressView.progress  =   normalizedTime
    }
    

   
}
