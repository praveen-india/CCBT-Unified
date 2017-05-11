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
    
    var player:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if audioLink    !=  nil {
           self.playAudio()
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func playAudio(){
        let url = URL(string:audioLink!)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url!)
            self.player = sound
            sound.numberOfLoops = 1
            sound.prepareToPlay()
            sound.play()
        } catch {
            print("error loading file")
            // couldn't load file :(
        }
    }

   
}
