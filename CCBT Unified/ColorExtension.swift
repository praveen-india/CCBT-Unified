//
//  ColorExtension.swift
//  CCBT Unified
//
//  Created by Zaman on 20/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    
    static func setColorValues(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor{
        
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
        
    }
    
}
