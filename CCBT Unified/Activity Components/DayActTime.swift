//
//  DayActTime.swift
//  CCBT Unified
//
//  Created by Praveen on 29/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class DayActTime: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView?.delegate    =   self;
        self.tableView?.dataSource  =   self;
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell    =   self.tableView.dequeueReusableCell(withIdentifier: "DayActTimeCell") as! DayActTimeCell
        cell.dayText?.text   =   "";
        cell.timeText?.text  =   "";
        cell.activityText?.text  =   "";
        
        return cell
    }
    
}
