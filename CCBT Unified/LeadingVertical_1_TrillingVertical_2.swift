//
//  LeadingVertical_1_TrillingVertical_2.swift
//  CCBT Unified
//
//  Created by Prashant on 24/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class LeadingVertical_1_TrillingVertical_2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.customView1 as! UIView)
        self.view.addSubview(self.customView2 as! UIView)
        self.view.addSubview(self.customView3 as! UIView)
        self.view.addSubview(self.continueBtn)
        self.setCustomeView1Constraint()
        self.setCustomeView2Constraint()
        self.setCustomeView3Constraint()
        self.setCustomContinueBtnConstraint()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    var customView1 : AnyObject = {
        let view    =   UIView()
        view.translatesAutoresizingMaskIntoConstraints  =   false
        view.backgroundColor        =   UIColor.red
        return view
    }()
    
    var customView2 : AnyObject = {
        let view    =   UIView()
        view.translatesAutoresizingMaskIntoConstraints  =   false
        view.backgroundColor        =   UIColor.orange
        return view
    }()
    
    var customView3 : AnyObject = {
        let view    =   UIView()
        view.translatesAutoresizingMaskIntoConstraints  =   false
        view.backgroundColor        =   UIColor.brown
        return view
    }()
  
    lazy var continueBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 10
        button.tintColor = UIColor.white
        button.addTarget(self, action: #selector(self.continueBtnTapped), for: .touchUpInside)
        return button
    }()

    func continueBtnTapped(){
        
    }

}

extension LeadingVertical_1_TrillingVertical_2 {
    
    func setCustomeView1Constraint(){
        self.customView1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 10).isActive                =   true
        self.customView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive                =   true
        self.customView1.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.6, constant: 0).isActive    =   true
        self.customView1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.65, constant: 0).isActive =   true
    }
    
    func setCustomeView2Constraint(){
        self.customView2.topAnchor.constraint(equalTo: self.customView1.topAnchor, constant: 0).isActive                =   true
        self.customView2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive           =   true
        self.customView2.leadingAnchor.constraint(equalTo: self.customView1.trailingAnchor, constant: 10).isActive      =   true
        self.customView2.heightAnchor.constraint(equalTo: self.customView1.heightAnchor, multiplier: 0.48, constant: 0).isActive   =  true;
    }
    
    func setCustomeView3Constraint(){
        self.customView3.topAnchor.constraint(equalTo: self.customView2.bottomAnchor, constant: 10).isActive            =   true
        self.customView3.trailingAnchor.constraint(equalTo: self.customView2.trailingAnchor, constant: 0).isActive      =   true
        self.customView3.leadingAnchor.constraint(equalTo: self.customView2.leadingAnchor, constant: 0).isActive        =   true
        self.customView3.heightAnchor.constraint(equalTo: self.customView2.heightAnchor,constant: 0).isActive           =   true
    }
    
    func setCustomContinueBtnConstraint(){
        self.continueBtn.topAnchor.constraint(equalTo: self.customView3.bottomAnchor, constant: 5).isActive             =   true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.customView3.trailingAnchor, constant: 0).isActive      =   true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8).isActive                =   true
        self.continueBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.2, constant: 0).isActive  =   true
    }
    
}




