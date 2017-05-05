//
//  DummyVc.swift
//  CCBT Unified
//
//  Created by Prashant on 24/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class DummyVc: UIViewController {

    @IBOutlet weak var view2: UIView!
    var view1 =  UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title   =  "Home"
    }

    override var prefersStatusBarHidden: Bool{
        return false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        self.navigationController?.isNavigationBarHidden = true
    }
    
}
