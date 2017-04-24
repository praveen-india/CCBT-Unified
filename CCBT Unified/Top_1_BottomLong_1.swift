//
//  Top_1_BottomLong_1.swift
//  CCBT Unified
//
//  Created by Praveen on 18/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class Top_1_BottomLong_1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Top_1_BottomLong_1"
        self.view.addSubview(self.customView1 as! UIView)
        self.view.addSubview(self.customView2 as! UIView)
        self.view.addSubview(self.continueBtn)
        self.setCustomView1Constraint()
        self.setCustomView2Constraint()
        self.setContinueBtnConstraint()

    }
    
    var customView1 : AnyObject = {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
        
    }()
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    var customView2 : AnyObject = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.gray
        return view
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
        
        let vc = Top_1_BottomLong_2()
        _ = self.navigationController?.pushViewController(vc, animated: true)
        
    }

}


// MARK:- Extension for setting Constraint

extension Top_1_BottomLong_1 {
    
    func setCustomView1Constraint(){
        
        self.customView1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.customView1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.customView1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 74).isActive = true
        self.customView1.heightAnchor.constraint(equalTo: self.view.heightAnchor,multiplier: 0.2, constant: -74).isActive = true
    }
    
    func setCustomView2Constraint(){
        
        self.customView2.leadingAnchor.constraint(equalTo: self.customView1.leadingAnchor, constant: 0).isActive = true
        self.customView2.trailingAnchor.constraint(equalTo: self.customView1.trailingAnchor, constant: 0).isActive = true
        self.customView2.topAnchor.constraint(equalTo: self.customView1.bottomAnchor, constant: 10).isActive = true
        self.customView2.heightAnchor.constraint(equalTo: self.view.heightAnchor,multiplier: 0.75, constant: -94).isActive = true
        
    }
    
    func setContinueBtnConstraint(){
        
        self.continueBtn.topAnchor.constraint(equalTo: self.customView2.bottomAnchor, constant: 10).isActive = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.customView2.trailingAnchor, constant: 0).isActive = true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        self.continueBtn.widthAnchor.constraint(equalTo: self.customView2.widthAnchor, multiplier: 0.2, constant: 0).isActive = true
        
    }
}
