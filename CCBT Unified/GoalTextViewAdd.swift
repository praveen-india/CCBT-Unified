//
//  GoalTextViewAdd.swift
//  CCBT Unified
//
//  Created by Prashant on 01/05/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class GoalTextViewAdd: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}

extension GoalTextViewAdd : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:GoalTextViewTVC = tableView.dequeueReusableCell(withIdentifier: "GoalTextViewTVC", for: indexPath)as! GoalTextViewTVC
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height*0.2
    }
    
}
