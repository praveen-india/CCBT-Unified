//
//  Survey_QCBTBCell.swift
//  CCBT Unified
//
//  Created by Prashant on 27/04/17.
//  Copyright © 2017 Zaman Meraj. All rights reserved.
//

import UIKit
protocol Survey_QCBTBCellDelegate {
    
    func checkBtnTapped(tag: Int)
    
}

class Survey_QCBTBCell: UICollectionViewCell {

    var delegate : Survey_QCBTBCellDelegate?
   
    @IBOutlet var checkBtn: UIButton!
    @IBOutlet var question2Text: UITextView!
    @IBOutlet var question1Text: UITextView!
    @IBOutlet var headingLbl: UILabel!
    @IBOutlet var answerTextView: UITextView!
    var selectArr  =  [false]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func checkBtnTapped(_ sender: Any) {
        
        delegate?.checkBtnTapped(tag: self.tag)
//        if selectArr[0]{
//            self.checkBtn.setImage(UIImage(named: "empty_check_box"), for: .normal)
//            self.selectArr[0] = false
//        }else{
//            self.checkBtn.setImage(UIImage(named: "check_box"), for: .normal)
//            self.selectArr[0] = true
//        }
    }
}
