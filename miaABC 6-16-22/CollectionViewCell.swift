//
//  CollectionViewCell.swift
//  miaABC 6-16-22
//
//  Created by Joey Rubin on 6/16/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellButton: UIButton!
    
    var title = ""
  
    
//    @IBAction func letterButtonPressed(_ sender: UIButton) {
//        print(title)
//        
//    
//        
//       
//    
//    }
    
    func set(_ sticker: Sticker) {
        let image = UIImage(named: sticker.letterImageName)
        cellButton.setImage(image, for: .normal)
    }
    
    
}
