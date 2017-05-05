//
//  Horizontal_2.swift
//  CCBT Unified
//
//  Created by Praveen on 18/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class Horizontal_2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Horizontal_2"
        self.view.addSubview(customView1 as! UIView)
        self.view.addSubview(customView2 as! UIView)
        self.view.addSubview(self.continueBtn)
        self.setCustomView1Constraint()
        self.setCustomView2Constraint()
        self.setContinueBtnConstraint()
        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    var customView1 : AnyObject = {
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = UIColor.gray
        return view1
    }()
    
    var customView2 : AnyObject = {
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.backgroundColor = UIColor.gray
        return view2
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
        let vc = Horizontal_3()
        _ = self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension Horizontal_2 {
    
    func setCustomView1Constraint(){
        self.customView1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 74).isActive = true
        self.customView1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.customView1.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95, constant: 0).isActive = true
        self.customView1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.52, constant: -74).isActive = true
    }
    
    func setCustomView2Constraint(){
        self.customView2.topAnchor.constraint(equalTo: self.customView1.bottomAnchor, constant: 10).isActive = true
        self.customView2.centerXAnchor.constraint(equalTo: self.customView1.centerXAnchor, constant: 0).isActive = true
        self.customView2.widthAnchor.constraint(equalTo: self.customView1.widthAnchor, multiplier: 1 , constant: 0).isActive = true
        self.customView2.heightAnchor.constraint(equalTo: self.customView1.heightAnchor, multiplier: 1, constant: -10).isActive = true
    }
    
    func setContinueBtnConstraint(){
        self.continueBtn.topAnchor.constraint(equalTo: self.customView2.bottomAnchor, constant: 8).isActive = true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8).isActive = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.customView2.trailingAnchor, constant: 0).isActive = true
        self.continueBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.2, constant: 0).isActive = true
    }
}



