//
//  CollectionViewCell.swift
//  DummyProject
//
//  Created by Zaman on 4/14/17.
//  Copyright © 2017 Alcanzar. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(self.questionLabel)
        self.contentView.addSubview(self.optionCollectionView)
        self.setLabelConstraints()
        setCollectionViewConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var questionLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var optionCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
        self.optionCollectionView.delegate = dataSourceDelegate
        self.optionCollectionView.dataSource = dataSourceDelegate
        self.optionCollectionView.tag = row
        self.optionCollectionView.reloadData()
    }
}

extension CollectionViewCell{
    
    func setCollectionViewConstraints(){
        self.optionCollectionView.leadingAnchor.constraint(equalTo: self.questionLabel.leadingAnchor, constant: 0).isActive = true
        self.optionCollectionView.topAnchor.constraint(equalTo: self.questionLabel.bottomAnchor, constant: 10).isActive = true
        self.optionCollectionView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor, multiplier: 0.8, constant: 0).isActive = true
        self.optionCollectionView.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, multiplier: 1, constant: 0).isActive = true
        
    }

    func setLabelConstraints(){
        self.questionLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        self.questionLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10).isActive = true
        self.questionLabel.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, constant: -10).isActive = true
    }
    
}
