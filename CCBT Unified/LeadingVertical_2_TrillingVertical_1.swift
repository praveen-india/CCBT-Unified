//
//  LeadingVertical_2_TrillingVertical_1.swift
//  CCBT Unified
//
//  Created by Prashant on 22/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class LeadingVertical_2_TrillingVertical_1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title  =   "LeadingVertical_2_TrillingVertical_1"
        self.view.addSubview(self.customView1 as! UIView)
        self.view.addSubview(self.coustomView2 as! UIView)
        self.view.addSubview(self.customView3 as! UIView)
        self.view.addSubview(self.continueBtn)
        self.setCustomView1Constraint()
        self.setCustomView2Constraint()
        self.setCustomView3Constraint()
        self.setContinueBtnConstraint()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    var customView1 : AnyObject = {
        let view    =   UIView()
        view.translatesAutoresizingMaskIntoConstraints  =   false
        view.backgroundColor    =   UIColor.red
        return view
    }()
    
    var coustomView2 : AnyObject = {
        let view    =   UIView()
        view.translatesAutoresizingMaskIntoConstraints  =   false
        view.backgroundColor    =   UIColor.blue
        return view
    }()
    
    var customView3 : AnyObject = {
        
        let view    =   UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor    =   UIColor.orange
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
        let vc  =   LeadingVertical_1_TrillingVertical_2()
        _       =   self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension LeadingVertical_2_TrillingVertical_1 {
    
    func setCustomView1Constraint(){
        self.customView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive                = true
        self.customView1.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.4, constant: 0).isActive    = true
        self.customView1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 74).isActive                        = true
        self.customView1.heightAnchor.constraint(equalTo: self.view.heightAnchor,multiplier: 0.5, constant: -74).isActive = true
    }
    func setCustomView2Constraint(){
        self.coustomView2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive         =   true
        self.coustomView2.widthAnchor.constraint(equalTo: self.customView1.widthAnchor, constant: 0).isActive       =   true
        self.coustomView2.topAnchor.constraint(equalTo: self.customView1.bottomAnchor, constant: 10).isActive       =   true
        self.coustomView2.heightAnchor.constraint(equalTo: self.customView1.heightAnchor, constant: 10).isActive    =   true
    }
    func setCustomView3Constraint(){
        self.customView3.leadingAnchor.constraint(equalTo: self.customView1.trailingAnchor, constant: 10).isActive  =   true
        self.customView3.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive       =   true
        self.customView3.topAnchor.constraint(equalTo: self.customView1.topAnchor, constant: 0).isActive            =   true
        self.customView3.bottomAnchor.constraint(equalTo: self.coustomView2.bottomAnchor, constant: 0).isActive     =   true
    }
    func setContinueBtnConstraint(){
        self.continueBtn.topAnchor.constraint(equalTo: self.coustomView2.bottomAnchor, constant: 10).isActive       =   true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.customView3.trailingAnchor, constant: -20).isActive       =   true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive   =   true
        self.continueBtn.widthAnchor.constraint(equalTo: self.coustomView2.widthAnchor, multiplier: 0.3, constant: 0).isActive = true
    }
}











