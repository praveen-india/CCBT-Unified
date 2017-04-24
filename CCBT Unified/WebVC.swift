//
//  WebVC.swift
//  CCBT Unified
//
//  Created by Pradeep on 4/12/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class WebVC: UIViewController {

    @IBOutlet var continueBtn: UIButton!
    @IBOutlet var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.setUpBtnProperty()
//        self.showLocalPdf()
        self.showRemotePdf()
        self.setUpCustomBtn()
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override var shouldAutorotate: Bool{
    return true
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpBtnProperty(){
        self.continueBtn.layer.cornerRadius = 5
        self.continueBtn.addTarget(self, action: #selector(self.continueBtnAction), for: .touchUpInside)
    }
    
    lazy var button : UIButton = {
        let continueBtn = UIButton(type: UIButtonType.custom)
        continueBtn.backgroundColor = UIColor.blue
        continueBtn.setTitle("Continue", for: .normal)
        continueBtn.layer.cornerRadius  = 5
        continueBtn.addTarget(self, action: #selector(self.continueBtnAction), for: .touchUpInside)
        continueBtn.translatesAutoresizingMaskIntoConstraints = false
        return continueBtn
    }()
    
    func setUpCustomBtn(){
        self.view.addSubview(self.button)
        self.setConstraints()
        
    }
    
    func setConstraints(){
        self.button.topAnchor.constraint(equalTo: self.myWebView.bottomAnchor, constant: 15).isActive = true
        self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5).isActive = true
        self.button.widthAnchor.constraint(equalTo: self.myWebView.widthAnchor, multiplier: 0.3, constant: 0).isActive = true
        self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20).isActive = true
    }
    
    
    //MARK:- Continue Btn Action
    
    func continueBtnAction(){
//        let vcIndex = self.navigationController?.viewControllers.index(where: { (viewController) -> Bool in
//            
//            if let _ = viewController as? TableVC {
//                return true
//            }
//            return false
//        })
//        
//        let destination = self.navigationController?.viewControllers[vcIndex!] as! TableVC
//       _ = self.navigationController?.popToViewController(destination, animated: true)
        let destination = self.storyboard?.instantiateViewController(withIdentifier: "VideoVC")
        _ = self.navigationController?.pushViewController(destination!, animated: true)
    }
    
    func showLocalPdf(){
        
        if let pdf = Bundle.main.url(forResource: "Resource1_1", withExtension: "pdf", subdirectory: nil, localization: nil)  {
            let req = URLRequest(url: pdf)
            myWebView.loadRequest(req)
        }else{
            print("-------PDF Not Present in the Project-------------")
        }
        
    }
    
    func showRemotePdf(){
        
        let website = "http://www.sanface.com/pdf/test.pdf"
        let reqURL =  URL(string: website)
        let request = URLRequest(url: reqURL! as URL)
        myWebView.loadRequest(request)
    }
    
    
}
