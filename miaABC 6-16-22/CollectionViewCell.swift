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
        FooterView.animal = selectAnimal(title)
        print(FooterView.animal?.imageName)
    
        
       
    
    }
    
    func selectAnimal(_ letter: String) -> Animal {
        var animal: Animal?
        switch letter {
        case "a":
            animal = Animals.aAnimals.randomElement()
        default:
            print("error")
        }
        return animal!
    }
    
    
}
