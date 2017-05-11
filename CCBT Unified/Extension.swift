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


extension UIFont {
    
    func withTraits(traits:UIFontDescriptorSymbolicTraits...) -> UIFont {
        
        let descriptor = self.fontDescriptor
            .withSymbolicTraits(UIFontDescriptorSymbolicTraits(traits))
        return UIFont(descriptor: descriptor!, size: 0)
    }
    
    func bold() -> UIFont {
        return withTraits(traits: .traitBold)
    }
    
    
    func italic() -> UIFont {
        return withTraits(traits: .traitItalic)
    }
    
    func fontName_Size(fontName : String, fontSize : CGFloat) -> UIFont{
        let fontFamilyNames = UIFont.familyNames
        for familyName in fontFamilyNames {
            print("------------------------------")
            print("Font Family Name = [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font Names = [\(names)]")
            if familyName == fontName{
                return UIFont(name: fontName, size: fontSize)!
            }else{
                continue
            }
        }
        return UIFont.systemFont(ofSize: fontSize)
    }
}


extension NSAttributedString {
    func underLine(text : String) -> NSAttributedString{
        return NSAttributedString(string: text, attributes: [NSUnderlineStyleAttributeName : NSUnderlineStyle.styleSingle.rawValue])
    }
}


