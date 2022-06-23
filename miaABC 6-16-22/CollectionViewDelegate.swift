//
//  CollectionViewDelegate.swift
//  miaABC 6-16-22
//
//  Created by Joey Rubin on 6/16/22.
//

import UIKit

class CollectionViewDelegate: NSObject,  UICollectionViewDelegateFlowLayout {

//We can control dynamic size of items, spacing between items, and spacing from edges.
//Option click UICollectionViewDelegateFlowLayout for more info = Header and footer customization plus more.
let numberOfItemsPerRow: CGFloat
let interItemSpacing: CGFloat
//To avoid magic numbers:
//We make 2 stored properties and an initializer that allows us to customize when we make the delegate:
init(numberOfItemsPerRow: CGFloat, interItemSpacing: CGFloat) {
    self.numberOfItemsPerRow = numberOfItemsPerRow
    self.interItemSpacing = interItemSpacing
    
}

//Create Dynamic Item Sizes to work on any screen = sizeForItemAt BELOW
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //Use init to dynamically make height and width of items accoding to screen size.
    //Query width of screen:
    let maxWidth = collectionView.frame.width
    //now that we have width deduct space between each items.
    let totalSPace = interItemSpacing * numberOfItemsPerRow
    //now use these values to determine the width of each item:
    let itemWidth = (maxWidth - totalSPace)/numberOfItemsPerRow
    
    return CGSize(width: itemWidth, height: itemWidth)
}

//Specify space between each item:
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return interItemSpacing
}

//Need space between section here:
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    if section == 0 {
        return UIEdgeInsets(top: 0, left: 5, bottom: 10, right: 5)
    } else {
        return UIEdgeInsets(top: 1, left: 5, bottom: 10, right: 5)
    }
}

}
