//
//  Horizontal_3_Cell.swift
//  CCBT Unified
//
//  Created by Praveen on 18/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class Horizontal_3_Cell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupComponentInsideCell()
        self.setCustomViewCellConstraint()
    }
    
    var customViewCell : UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupComponentInsideCell(){
        
        self.contentView.addSubview(customViewCell)
        
    }
}


extension Horizontal_3_Cell {
    
    func setCustomViewCellConstraint() {
        
        self.customViewCell.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.customViewCell.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.customViewCell.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 0).isActive = true
        self.customViewCell.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        
    }
    
}
