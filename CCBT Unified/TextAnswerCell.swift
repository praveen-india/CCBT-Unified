//
//  TextAnswerCell.swift
//  DummyProject
//
//  Created by Zaman on 4/14/17.
//  Copyright © 2017 Alcanzar. All rights reserved.
//

import UIKit

class TextAnswerCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(self.answerTextView)
        self.contentView.addSubview(self.questionLabel)
        self.setLabelConstraints()
        self.setTextViewConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var answerTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.layer.borderWidth = 3
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.font = UIFont(name: "Helvetica", size: 20)
        return textView
    }()
    
    var questionLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Helvetica", size: 20)
        return label
    }()
    
}


extension TextAnswerCell{
    
    func setTextViewConstraint(){
        self.answerTextView.topAnchor.constraint(equalTo: self.questionLabel.bottomAnchor, constant: 10).isActive = true
        self.answerTextView.trailingAnchor.constraint(equalTo: self.questionLabel.trailingAnchor, constant: 0).isActive = true
        self.answerTextView.leadingAnchor.constraint(equalTo: self.questionLabel.leadingAnchor, constant: 0).isActive = true
        self.answerTextView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -44).isActive = true
    }
    
    func setLabelConstraints(){
        self.questionLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        self.questionLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10).isActive = true
        self.questionLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10).isActive = true
    }
}
