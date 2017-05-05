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
extension UINavigationBar {
    
    open override func sizeThatFits(_ size: CGSize) -> CGSize {
        let screenRect = UIScreen.main.bounds
        if UI_USER_INTERFACE_IDIOM() == .pad {
            return CGSize(width: screenRect.size.width, height: 74)
        }else{
            return CGSize(width: screenRect.size.width, height: 44)
        }
    }
    static func setNavigationTitleFont(){
        
    }
}

 
