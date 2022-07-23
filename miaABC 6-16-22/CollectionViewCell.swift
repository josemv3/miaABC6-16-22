//
//  CollectionViewCell.swift
//  miaABC 6-16-22
//
//  Created by Joey Rubin on 6/16/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
   
    @IBOutlet var cellImageView: UIImageView!
    
    var title = ""
    
  
    
    func set(_ sticker: Sticker) {
        let image = UIImage(named: sticker.letterImageName)
        cellImageView.image = image
    }
    
    
}
