//
//  OptionCell.swift
//  DummyProject
//
//  Created by Zaman on 4/14/17.
//  Copyright © 2017 Alcanzar. All rights reserved.
//

import UIKit




class OptionCell: UICollectionViewCell{
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.addSubview(selectedOptionImage)
        self.contentView.addSubview(optionTextLabel)
        self.setImageConstraints()
        self.setLabelConstraint()
    
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var selectedOptionImage: UIImageView = {
       
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "w_circle.png")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    var optionTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
}


extension OptionCell{
    
    func setImageConstraints(){
        self.selectedOptionImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.selectedOptionImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.selectedOptionImage.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor, constant: 0).isActive = true
        self.selectedOptionImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10).isActive = true
    }
    
    func setLabelConstraint(){
        
        self.optionTextLabel.centerYAnchor.constraint(equalTo: self.selectedOptionImage.centerYAnchor, constant: 0).isActive = true
        self.optionTextLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 10).isActive = true
        self.optionTextLabel.leftAnchor.constraint(equalTo: self.selectedOptionImage.rightAnchor, constant: 10).isActive = true
        
    }
    
}
