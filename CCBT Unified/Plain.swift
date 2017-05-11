//
//  Plain.swift
//  CCBT Unified
//
//  Created by Praveen on 18/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class Plain: UIViewController {

    var customView : AnyObject =  {
       
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
        
    }()
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscapeLeft
    }
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Plain"
        self.view.addSubview(self.customView as! UIView)
        self.view.addSubview(self.continueBtn)
        self.setCustomViewConstraint()
        self.setContinueBtnConstraint()
        // Do any additional setup after loading the view.
    }
    
    func continueBtnTapped(){
        let vc = Horizontal_2()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


// Extension for setting constraint

extension Plain {
    
    func setCustomViewConstraint(){
        self.customView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.customView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 74).isActive = true
        self.customView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95, constant: 0).isActive = true
        self.customView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.85, constant: -74).isActive = true
    }
    func setContinueBtnConstraint(){
        self.continueBtn.topAnchor.constraint(equalTo: self.customView.bottomAnchor, constant: 8).isActive = true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8).isActive = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.customView.trailingAnchor, constant: 0).isActive = true
        self.continueBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.2, constant: 0).isActive = true
    }
}
