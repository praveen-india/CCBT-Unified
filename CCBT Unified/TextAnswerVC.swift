//
//  TextAnswerVC.swift
//  DummyProject
//
//  Created by Zaman on 4/14/17.
//  Copyright © 2017 Alcanzar. All rights reserved.
//

import UIKit

class TextAnswerVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    private let textAnswerCell = "TextAnswerCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Text Answer"
        self.QAndAnsCollection.dataSource = self
        self.QAndAnsCollection.delegate = self
        self.QAndAnsCollection.register(TextAnswerCell.self, forCellWithReuseIdentifier: textAnswerCell)
        self.view.addSubview(self.QAndAnsCollection)
        self.view.addSubview(self.continueBtn)
        self.setCollectionViewConstraint()
        self.setButtonConstraint()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    var QAndAnsCollection : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectioView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collectioView.isPagingEnabled = true
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumInteritemSpacing = 0.0
        layout.minimumLineSpacing = 0.0
        collectioView.showsHorizontalScrollIndicator = false
        collectioView.showsVerticalScrollIndicator = false
        collectioView.translatesAutoresizingMaskIntoConstraints = false
        collectioView.backgroundColor = UIColor.clear
        return collectioView
    }()
    
    lazy var continueBtn: UIButton = {
        
        var button = UIButton()
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = UIColor.blue
        button.tintColor = UIColor.white
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(self.continueBtnTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    
    func continueBtnTapped(){
       let visibleItem = self.QAndAnsCollection.indexPathsForVisibleItems
        var currentItem = visibleItem[0]
        let nextIndex = IndexPath(item: currentItem.item + 1, section: 0)
        if nextIndex.item > 2{
            let vc = TestVC()
            self.navigationController?.pushViewController(vc, animated: true)
            print("ERROR: Attempt to scroll to invalid index path: <NSIndexPath: 0x60800023f5a0> {length = 2, path = 0 - 4}")
        }else{
            self.QAndAnsCollection.scrollToItem(at: nextIndex, at: .left, animated: true)
        }
        
        
    }
    
    //MARK:- Datasource and delegate Method 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: textAnswerCell, for: indexPath) as! TextAnswerCell
        cell.questionLabel.text = "How are you?"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.QAndAnsCollection.frame.size.width, height: self.QAndAnsCollection.frame.size.height)
    }
    

}

//MARK:- Extension for adding constraints
extension TextAnswerVC{
    
    func setCollectionViewConstraint(){
        
        self.QAndAnsCollection.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 70).isActive = true
        self.QAndAnsCollection.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.QAndAnsCollection.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.QAndAnsCollection.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7).isActive = true
    }
    
    func setButtonConstraint(){
        self.continueBtn.topAnchor.constraint(equalTo: self.QAndAnsCollection.bottomAnchor, constant: 5).isActive = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.continueBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor,multiplier: 0.25, constant: 0).isActive = true
        self.continueBtn.heightAnchor.constraint(equalTo: self.view.heightAnchor,multiplier: 0.1, constant: 0).isActive = true
    }
}
