//
//  ViewController.swift
//  CCBT Unified
//
//  Created by Praveen on 03/04/17.
//  Copyright © 2017 CBT Systems. All rights reserved.
//

import UIKit



class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    var questionTyp : QuestionType?
    let tableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.frame =   CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: self.view.frame.size.height - 20)
        
        tableView.delegate  =   self
        tableView.dataSource    =   self
        tableView.backgroundColor   =   UIColor.lightGray
        self.view.addSubview(tableView)
       
        
        let btn = UIButton()
        btn.setTitle("Click Me!", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.frame   =   CGRect(x: 50, y: tableView.frame.size.height - 60, width: 100, height: 40)
        btn.layer.cornerRadius  =   5;
        btn.clipsToBounds   =   true
        btn.backgroundColor =   UIColor.blue
        btn.addTarget(self, action: #selector(ViewController.btnClicked), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        print("Hello")
        questionTyp = QuestionType(isSingalChoice: true, totoalNoOfOptions: 4, questionName: "Where are you?", questionHeading: "Main Questions", opions: ["Hello2","Hello200" ,"Hellol 33","Helooo    999"])
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func btnClicked(){
        print("\((questionTyp?.isSingalChoice)!)   \n \((questionTyp?.totoalNoOfOptions)!) \n \((questionTyp?.questionName)!) \n \((questionTyp?.questionHeading)!) \n \((questionTyp?.opions[0])!) \n  \((questionTyp?.opions[1])!)")
        self.tableView.reloadData()
        
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (questionTyp?.totoalNoOfOptions)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        
        
//        cell = tableView.dequeueReusableCell(withIdentifier: )
        cell.textLabel?.text    =   questionTyp?.opions[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    
}

