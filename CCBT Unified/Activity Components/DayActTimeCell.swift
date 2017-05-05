//
//  DayActTimeCell.swift
//  CCBT Unified
//
//  Created by Praveen on 29/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class DayActTimeCell: UITableViewCell {

    @IBOutlet weak var dayText: UITextView!
    @IBOutlet weak var activityText: UITextView!
    @IBOutlet weak var timeText: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
