//
//  TableVC.swift
//  CCBT Unified
//
//  Created by Pradeep on 4/12/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit
import Alamofire

class TableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let myArray = [Any]()
//    @IBOutlet var continueBtnTapped: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.customTableView.dataSource = self
        self.customTableView.delegate = self
        self.view.addSubview(self.customTableView)
        self.view.addSubview(continueBtn)
        self.title = "Table View"
        self.setTableConstraint()
        self.setButtonConstraints()
       
        
    }
    
    var customTableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.layer.borderWidth = 3
        tableView.layer.borderColor = UIColor.lightGray.cgColor
        return tableView
    }()
    
    lazy var continueBtn : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = UIColor.blue
        button.addTarget(self, action: #selector(self.continueBtnTapped), for: .touchUpInside)
        button.layer.cornerRadius = 5
        button.tintColor = .white
        return button
        }()
    
    func continueBtnTapped(){
        
        let vc = ViewController()
        _ = self.navigationController?.pushViewController(vc, animated: true)
        print("Continue Btn Tapped")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
    }
    
    override var shouldAutorotate: Bool{
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Continue Button property
    
    
    
    //MARK:- Datasource and Delegate Methods
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
}

//MARK:- Extension for setting constraints

extension TableVC{
    
    func setTableConstraint(){
        self.customTableView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9, constant: 0).isActive = true
        self.customTableView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.8, constant: 0).isActive = true
        self.customTableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.customTableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 64).isActive = true
    }
    
    func setButtonConstraints(){
        
        self.continueBtn.widthAnchor.constraint(equalTo: self.customTableView.widthAnchor, multiplier: 0.4, constant: 0).isActive = true
        self.continueBtn.heightAnchor.constraint(equalTo: self.customTableView.heightAnchor, multiplier: 0.1, constant: 0).isActive = true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.customTableView.trailingAnchor, constant: 0).isActive = true
        
    }
    
    
}

















