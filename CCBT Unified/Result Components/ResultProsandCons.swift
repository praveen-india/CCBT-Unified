//
//  ResultProsandCons.swift
//  CCBT Unified
//
//  Created by Praveen on 28/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class ResultProsandCons: UIViewController {

    @IBOutlet weak var continuBtn: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    var continuBtnBackColor :   CustomColor?
    var continuBtnTxtColor :  CustomColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if continuBtnBackColor != nil{
             self.continuBtn?.backgroundColor = UIColor.setColorValues(red:(continuBtnBackColor?.red)!, green: (continuBtnBackColor?.green)!, blue: (continuBtnBackColor?.blue)!)
        }
        else{
            self.continuBtn.backgroundColor =   dafaultBtnBackColor
        }
       
        
        if continuBtnTxtColor != nil {
            self.continuBtn?.setTitleColor(UIColor.setColorValues(red: (continuBtnTxtColor?.red)!, green: (continuBtnTxtColor?.green)!, blue: (continuBtnTxtColor?.blue)!), for: .normal)
        }
        
        else{
            continuBtn?.setTitleColor(defaultBtnTitleColor, for: .normal)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func continu(_ sender: Any) {
        
    }
}
