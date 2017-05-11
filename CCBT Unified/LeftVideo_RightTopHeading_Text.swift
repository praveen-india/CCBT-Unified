//
//  LeftVideo_RightTopHeading_Text.swift
//  CCBT Unified
//
//  Created by Prashant on 27/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class LeftVideo_RightTopHeading_Text: UIViewController {

    var heading     : String?
    var detailText  : String?
    var videoUrl    : String?
    
    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var headingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.headingComponent_Mthd()
        self.textViewDetail_Mthd()
    }
    func headingComponent_Mthd(){
        if heading != nil {
            self.headingLabel?.text     =   heading!
        }
    }
    
    func textViewDetail_Mthd()  {
        if detailText != nil {
            self.detailTextView?.text   =   detailText!
        }
    }
    
    func videoView_Mthd(){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

