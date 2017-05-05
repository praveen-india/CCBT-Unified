//
//  BottomImageScroll.swift
//  CCBT Unified
//
//  Created by Praveen on 28/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit

class BottomImageScroll: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var ImageCollectionView: UICollectionView!

    @IBOutlet weak var headingTextView: UITextView!
    
    var collectionBackColor =   CustomColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.view.backgroundColor   =   UIColor.setColorValues(red: collectionBackColor.red, green: collectionBackColor.green, blue: collectionBackColor.blue)
        
        
        // Do any additional setup after loading the view.
    }

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:ImageCell  =   collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.imageView.image    =   UIImage(named: "main_bg.png")

        cell.backgroundColor    =   UIColor.lightGray
        
        return cell
    }
    
}
