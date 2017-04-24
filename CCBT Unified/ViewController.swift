//
//  ViewController.swift
//  DummyProject
//
//  Created by Zaman on 4/14/17.
//  Copyright © 2017 Alcanzar. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    private let cellId = "CollectionViewCell"
    private let optionCell = "OptionCell"
    var selectArr = [Bool]()
    var options = ["Option A", "Option B", "Option C", "Option D", "Option E", "option F", "Option G"]
    
    var color :[UIColor] = [.green, .yellow, .red, .blue]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        self.addSubViewComponent()
        self.setCollectionViewConstraint()
        self.setButtonConstraints()
        self.title = "Survey"
        for _ in 1...7{
            selectArr.append(false)
        }
        if UI_USER_INTERFACE_IDIOM() == .pad{
            
        }else{
            let value = UIInterfaceOrientation.landscapeLeft.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
        }
    }
    
    func addSubViewComponent(){
        self.view.addSubview(self.collectionView)
        self.view.addSubview(self.continueBtn)
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = UIColor.clear
        layout.minimumInteritemSpacing = 0.0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        collection.showsVerticalScrollIndicator = false
        collection.showsHorizontalScrollIndicator = false
        collection.isScrollEnabled = false
        collection.isPagingEnabled = true
        return collection
    }()
    
   lazy var continueBtn : UIButton = {
        let button = UIButton(type: UIButtonType.custom)
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = UIColor.blue
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(self.continueBtnTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    func continueBtnTapped(){
        
        
        
        var visibleItems = self.collectionView.indexPathsForVisibleItems
        var currentItem = visibleItems[0]
        if currentItem.item < 6 {
            if selectArr.count > 0{
                self.selectArr.removeAll()
            }
            let nextItem = IndexPath(item: (currentItem.item) + 1, section: (currentItem.section))
            self.collectionView.scrollToItem(at: nextItem, at: .left, animated: true)
            
            
            for _ in 1...7{
                self.selectArr.append(false)
            }
            self.collectionView.reloadData()
        
        }else{
            
            let vc = TextAnswerVC()
            self.navigationController?.pushViewController(vc, animated: true)
            
            print("ERROR: Attempt to scroll to invalid index path: <NSIndexPath: 0x60800023f5a0> {length = 2, path = 0 - 4}")
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView.isEqual(self.collectionView){
             return 7
        }else{
             return 7
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.isEqual(self.collectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CollectionViewCell
            cell.questionLabel.text = "How are you feeling?"
            cell.questionLabel.font = UIFont(name: "Helvetica", size: 20)
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: optionCell, for: indexPath) as! OptionCell
            if self.selectArr[indexPath.row] == true{
                cell.selectedOptionImage.image = UIImage(named: "g_circle")
            }
            else{
                cell.selectedOptionImage.image = UIImage(named: "w_circle")
            }
            cell.optionTextLabel.text = options[indexPath.item]
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if UI_USER_INTERFACE_IDIOM() == .pad{
            return self.cellSizeForIPad()
        }else{
            if collectionView.isEqual(self.collectionView){
                return self.cellSizeForOthers()
            }else{
                return self.cellSizeForOptions()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        
        guard let collectionViewCell = cell as? CollectionViewCell else { return }
        
        collectionViewCell.optionCollectionView.register(OptionCell.self, forCellWithReuseIdentifier: optionCell)
       
        
        if collectionView.isEqual(self.collectionView){
            
        }else{
            if self.selectArr.count > 0{
                self.selectArr.removeAll()
            }
            for _ in 1...7{
                self.selectArr.append(false)
            }
        }
         collectionViewCell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self, forRow: indexPath.item)
        collectionViewCell.optionCollectionView.reloadData()
        
    }
    
    
    func cellSizeForIPad() -> CGSize{
        return CGSize(width: self.view.frame.size.width*0.5, height: self.view.frame.size.height*0.25)
    }
    
    func cellSizeForOthers() -> CGSize{
        return CGSize(width: self.collectionView.frame.size.width, height: self.collectionView.frame.size.height)
    }
    
    func cellSizeForOptions() -> CGSize{
        return CGSize(width: self.collectionView.frame.size.width*0.45, height: self.collectionView.frame.size.height*0.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.isEqual(self.collectionView){
            print(indexPath.item)
        }else{
            if self.selectArr.count > 0{
                self.selectArr.removeAll()
            }
            for _ in self.options{
                self.selectArr.append(false)
            }
            
            self.selectArr[indexPath.row] = true
            print("arr - > \(self.selectArr)")
            self.collectionView.reloadData()
            print(indexPath.item)
        }
    }
    
}


extension ViewController{
    
    
    func setCollectionViewConstraint(){
        self.collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.collectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 24).isActive = true
        self.collectionView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.8, constant: 0).isActive = true
        self.collectionView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1, constant: 0).isActive = true
    }
    
    func setButtonConstraints(){
        
        self.continueBtn.topAnchor.constraint(equalTo: self.collectionView.bottomAnchor, constant: 10).isActive = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.continueBtn.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1, constant: 0).isActive = true
        self.continueBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25, constant: 0).isActive = true
    }
    
}





