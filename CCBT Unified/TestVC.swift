//
//  TestVC.swift
//  DummyProject
//
//  Created by Zaman on 4/15/17.
//  Copyright © 2017 Alcanzar. All rights reserved.
//

import UIKit

class TestVC: UIViewController {

    
    var customView: ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        customView = ViewController()
        if let a  = customView?.view{
            self.view.addSubview(a)
        }else{
            print("View is nil")
        }
        setConstraints()
        
        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


extension TestVC {
    
    func setConstraints(){
        
        self.customView?.view.frame = CGRect(x: 0, y: 44, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-44)
        
    }
    
}
