//
//  ChallengingThoughts.swift
//  CCBT Unified
//
//  Created by Praveen on 06/05/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class ChallengingThoughts: UIViewController {
    @IBOutlet weak var textView: UITextView!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var yesBtn: UIButton!
    @IBOutlet weak var noBtn: UIButton!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        _ =   self.noBtn.titleLabel?.font.italic()
        
    }
    
    
    
    @IBAction func yes(_ sender: Any) {
        
        let url = NSURL(string: "www.google.com")! as URL
        var urlrequest  =   NSMutableURLRequest(url: url)
        
        let body    =   NSDictionary()
        
        body.setValue("Hello", forKey: "Hi")
        
        
    }

    @IBAction func no(_ sender: Any) {
    }
   
}
