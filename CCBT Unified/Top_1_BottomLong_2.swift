//
//  Top_1_BottomLong_2.swift
//  CCBT Unified
//
//  Created by Praveen on 18/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class Top_1_BottomLong_2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Top_1_BottomLong_2"
        self.view.addSubview(self.customView2 as! UIView)
        self.view.addSubview(self.customView1 as! UIView)
        self.view.addSubview(self.customView3 as! UIView)
        self.view.addSubview(self.continueBtn)
        self.setContinueBtnConstraint()
        self.setCustomView1Constraint()
        self.setCustomView2Constraint()
        self.setCustomView3Constraint()
        
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
        view.backgroundColor = UIColor.setColorValues(red: 121, green: 101, blue: 150)
        return view
    }()
    
    var customView2 : AnyObject = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.setColorValues(red: 140, green: 150, blue: 160)
        return view
    }()
    
    var customView3 : AnyObject = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.setColorValues(red: 0, green: 0, blue: 130)
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
        let vc = LeadingVertical_2_TrillingVertical_1()
        _ = self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension Top_1_BottomLong_2 {
    func setCustomView1Constraint(){
        self.customView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.customView1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.customView1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 74).isActive = true
        self.customView1.heightAnchor.constraint(equalTo: self.view.heightAnchor,multiplier: 0.36, constant: -74).isActive = true
    }
    func setCustomView2Constraint(){
        self.customView2.leadingAnchor.constraint(equalTo: self.customView1.leadingAnchor, constant: 0).isActive = true
        self.customView2.widthAnchor.constraint(equalTo: self.customView1.widthAnchor, multiplier: 0.49, constant: 0).isActive = true
        self.customView2.topAnchor.constraint(equalTo: self.customView1.bottomAnchor, constant: 10).isActive = true
        self.customView2.heightAnchor.constraint(equalTo: self.view.heightAnchor,multiplier: 0.46, constant: 0).isActive = true
    }
    func setCustomView3Constraint(){
        self.customView3.trailingAnchor.constraint(equalTo: self.customView1.trailingAnchor, constant: 0).isActive = true
        self.customView3.leadingAnchor.constraint(equalTo: self.customView2.trailingAnchor, constant: 10).isActive = true
        self.customView3.bottomAnchor.constraint(equalTo: self.customView2.bottomAnchor, constant: 0).isActive = true
        self.customView3.topAnchor.constraint(equalTo: self.customView2.topAnchor, constant: 0).isActive = true
    }
    func setContinueBtnConstraint(){
        self.continueBtn.topAnchor.constraint(equalTo: self.customView2.bottomAnchor, constant: 8).isActive = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.customView3.trailingAnchor, constant: 0).isActive = true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8).isActive = true
        self.continueBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.2, constant: 0).isActive = true
    }
}
















