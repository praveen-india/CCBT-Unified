//
//  LeftTextTableCell.swift
//  CCBT Unified
//
//  Created by Praveen on 10/05/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class LeftTextTableCell: UITableViewCell {
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtView: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
