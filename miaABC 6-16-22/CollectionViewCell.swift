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
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        FooterView.sticker = selectAnimal(title)
        print(FooterView.sticker?.imageName)
    
        
       
    
    }
    
    func selectAnimal(_ letter: String) -> InstructiveSticker {
        var sticker: InstructiveSticker?
        switch letter {
        case "a":
            sticker = InstructiveStickers.aStickers.randomElement()
        case "b":
            sticker = InstructiveStickers.bStickers.randomElement()
        case "c":
            sticker = InstructiveStickers.cStickers.randomElement()
        case "d":
            sticker = InstructiveStickers.dStickers.randomElement()
        case "e":
            sticker = InstructiveStickers.eStickers.randomElement()
        case "f":
            sticker = InstructiveStickers.fStickers.randomElement()
        case "g":
            sticker = InstructiveStickers.gStickers.randomElement()
        case "h":
            sticker = InstructiveStickers.hStickers.randomElement()
        case "i":
            sticker = InstructiveStickers.iStickers.randomElement()
            
        default:
            print("oops")
        }
        return sticker!
    }
    
    
}
