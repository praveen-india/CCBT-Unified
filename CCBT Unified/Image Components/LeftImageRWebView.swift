//
//  LeftImageRWebView.swift
//  CCBT Unified
//
//  Created by Praveen on 28/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit
import SDWebImage
class LeftImageRWebView: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var webView: UIWebView!
    var strUrl:String?
    var imgUrl:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if strUrl != nil {
            let url =   URL(string: strUrl!)
            self.webView?.loadRequest(URLRequest.init(url: url!))
        }
        
        if imgUrl != nil {
            self.imageView.sd_setImage(with: URL(string: imgUrl!))
            
        }
        else{
            self.imageView?.image    =   UIImage(named: "main_bg.png")
        }
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
