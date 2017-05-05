//
//  Vertical_3.swift
//  CCBT Unified
//
//  Created by Praveen on 18/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class Vertical_3: UIViewController {

    
    var colors : [UIColor] = [.red, .yellow, .green]
    let cellId = "Vertical_3_Cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Vertical_ 3"
        self.view.addSubview(self.collection_3_Views)
        self.view.addSubview(self.continueBtn)
        self.setCollection_3_ViewsConstraint()
        self.setContinueBtnConstraint()
        self.collection_3_Views.dataSource = self
        self.collection_3_Views.delegate = self
        
        self.collection_3_Views.register(Horizontal_3_Cell.self, forCellWithReuseIdentifier: cellId)
        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    override var shouldAutorotate: Bool{
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return UIInterfaceOrientationMask.landscape
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var collection_3_Views : UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0.0
        layout.minimumLineSpacing = 5.0
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.isPagingEnabled = true
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor.clear
        return collectionView
    }()
    
    lazy var continueBtn : UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.blue
        button.setTitle("Continue", for: .normal)
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(self.continueBtnTapped), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    
    func continueBtnTapped(){
        let vc = Top_2_Bottom_1()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}


//MARK:- Extension for setting constraints

extension Vertical_3{
    
    func setCollection_3_ViewsConstraint(){
        self.collection_3_Views.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 54).isActive = true
        self.collection_3_Views.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.collection_3_Views.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.85, constant: -54).isActive = true
        self.collection_3_Views.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95, constant: 0).isActive = true
    }
    func setContinueBtnConstraint(){
        self.continueBtn.topAnchor.constraint(equalTo: self.collection_3_Views.bottomAnchor, constant: 8).isActive = true
        self.continueBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8).isActive = true
        self.continueBtn.trailingAnchor.constraint(equalTo: self.collection_3_Views.trailingAnchor, constant: 0).isActive = true
        self.continueBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.2, constant: 0).isActive = true
    }
}

//MARK:- Collection view data source and delegate method


extension Vertical_3: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! Horizontal_3_Cell
        cell.backgroundColor = colors[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if UI_USER_INTERFACE_IDIOM() == .pad{
            return CGSize(width: self.collection_3_Views.frame.size.width*0.5, height: self.collection_3_Views.frame.size.height)
        }else{
            return CGSize(width: self.collection_3_Views.frame.size.width, height: self.collection_3_Views.frame.size.height)
        }
        
        
    }
    
}





