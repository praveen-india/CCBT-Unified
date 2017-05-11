//
//  Vertical_2.swift
//  CCBT Unified
//
//  Created by Zaman on 18/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class Vertical_2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Vertical_2"
        self.view.addSubview(self.customView1 as! UIView)
        self.view.addSubview(self.customView2 as! UIView)
        self.view.addSubview(self.continueBtn)
        self.setCustomView1Constraint()
        self.setCustomView2Constraint()
        self.setContinueBtnConstraint()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    var customView1 : AnyObject = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.brown
        
        return view
    }()
    
    var customView2 : AnyObject = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.cyan
        return view
    }()
    
    lazy var continueBtn : UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.blue
        button.setTitle("Continue", for: .normal)
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(self.continueBtnTapped), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    
    func continueBtnTapped(){
        let vc = Vertical_3()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
}


extension Vertical_2 {
    
    func setCustomView1Constraint(){
        self.customView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.customView1.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5, constant: -10).isActive = true
        self.customView1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.65, constant: 0).isActive = true
        self.customView1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 10).isActive = true
    }
    
    func setCustomView2Constraint(){
        self.customView2.leadingAnchor.constraint(equalTo: self.customView1.trailingAnchor, constant: 10).isActive = true
        self.customView2.widthAnchor.constraint(equalTo: self.customView1.widthAnchor, multiplier: 1, constant: -10).isActive = true
        self.customView2.heightAnchor.constraint(equalTo: self.customView1.heightAnchor, multiplier: 1, constant: 0).isActive = true
        self.customView2.centerYAnchor.constraint(equalTo: self.customView1.centerYAnchor, constant: 0).isActive = true
    }
    
    func setContinueBtnConstraint(){
        self.continueBtn.topAnchor.constraint(equalTo: self.customView2.bottomAnchor, constant: 8).isActive         = true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8).isActive            = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.customView2.trailingAnchor, constant: 0).isActive  = true
        self.continueBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.2, constant: 0).isActive = true
    }
    
}


