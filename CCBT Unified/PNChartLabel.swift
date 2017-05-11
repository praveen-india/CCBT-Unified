//
//  PNChartLabel.swift
//  CCBT Unified
//
//  Created by Zaman on 08/05/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import Foundation
import UIKit

class PNChartLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.font = UIFont.boldSystemFont(ofSize: 10.0)
        self.textColor = PNGrey
        self.backgroundColor = UIColor.clear
        self.textAlignment = NSTextAlignment.center
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder: NSCode) has not been implemented.")
    }
    
}
