//
//  RightImage.swift
//  CCBT Unified
//
//  Created by Praveen on 28/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit
import SDWebImage

class RightImage: UIViewController {

    
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var continueBtn: UIButton!
    
    var backImageUrl:String?
    var imageUrl:String?
    var backgrdBtnColor = CustomColor()
    var btnTxtColor     =   CustomColor()
    var cornerRadius:CGFloat    = 5
    var btnTxt:String           = "Continue"
    
    var hdColor =   CustomColor()
    var contentColor    =   CustomColor()
    var headingTxt  =   String()
    var contentTxt  =   String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.continueBtn?.backgroundColor    =   UIColor.setColorValues(red: backgrdBtnColor.red  , green: backgrdBtnColor.green, blue: backgrdBtnColor.blue)
        self.continueBtn?.layer.cornerRadius =   cornerRadius
        self.continueBtn?.setTitle(btnTxt, for: .normal)
        self.continueBtn?.setTitleColor(UIColor.setColorValues(red: btnTxtColor.red, green: btnTxtColor.green, blue: btnTxtColor.blue), for: .normal)
        
        
        if backImageUrl != nil{
            let imgUrl  =   URL(string: backImageUrl!)
            self.backImage?.sd_setImage(with: imgUrl)
        }
        else{
            self.backImage?.image    =   UIImage(named:"main_bg.png")
        }
        
        
        if imageUrl != nil{
            let imgUrl  =   URL(string: imageUrl!)
            self.imageView?.sd_setImage(with: imgUrl)
        }
        
        
        self.heading?.text   =   headingTxt
        self.heading?.textColor  =   UIColor.setColorValues(red: hdColor.red, green: hdColor.green, blue: hdColor.blue)
        
        self.textview?.text  =   contentTxt
        self.textview?.textColor =   UIColor.setColorValues(red: contentColor.red, green: contentColor.green, blue: contentColor.blue)
        
        
    }
    
    
    
    
    @IBAction func continu(_ sender: Any) {
        /*
         let vc  =   self.storyboard?.instantiateViewController(withIdentifier: "RightImageVC") as! LeftImageVC
         vc.headingTxt   =   "Hi VC"
         vc.contentTxt   =   "I am in Right Image view controller, Where are you ?"
         vc.contentColor =   CustomColor.init(red: 20, green: 100, blue: 200)
         vc.hdColor      =   CustomColor.init(red: 10, green: 10, blue: 10)
         vc.btnTxt       =   "Continue"
         vc.btnTxtColor  =   CustomColor.init(red: 20, green: 20, blue: 20)
         vc.backgrdBtnColor  =   CustomColor.init(red: 30, green: 180, blue: 30)
         
         self.navigationController?.pushViewController(vc, animated: true)
         */
    }

}
