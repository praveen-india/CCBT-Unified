//
//  TableComponent.swift
//  CCBT Unified
//
//  Created by Praveen on 04/05/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class TableComponent: UIViewController , UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

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
        let cell   =   tableView.dequeueReusableCell(withIdentifier: "LeftBtnTableCell") as! LeftBtnTableCell
        cell.textLabel?.text    =   ""
        return cell
    }

    
  
}
