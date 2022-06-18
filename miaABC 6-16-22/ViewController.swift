//
//  ViewController.swift
//  miaABC 6-16-22
//
//  Created by Joey Rubin on 6/16/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var cViewMain: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cViewMain.delegate = delegate
        
    }
    
    let buttonImage: [String] = ["a","b","c","d","e","f","g"]
    
    let delegate = CollectionViewDelegate(numberOfItemsPerRow: 3, interItemSpacing: 10)
        

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cViewMain.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = UIColor.systemRed
        
        //cell.cellButton.imageView?.image = UIImage(named: "b")
        //cell.cellButton.setImage(UIImage(named: "b"), for: .normal)
        //let emoji = self.emoji.data[category]?[indexPath.item] ?? ""
        cell.cellButton.setImage(UIImage(named: buttonImage[indexPath].row)
        
       
        return cell
    }
    
    
    
//    let buttonImage: [String] = ["a","b","c","d","e","f","g"]
//
//    func setButtonImage() {
//        CollectionViewCell.cellButton.currentImage = UIImage(named: [0,buttonImage[cellForItemAt.indexPath]])
//    }
    
    //To populate HEADER with data
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let HeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.reuseIdentifier, for: indexPath) as? HeaderView else {
            fatalError("HeaderView cannot be created")
        }
        
        HeaderView.headerLabel.text = "ABC GO!"
        
        return HeaderView
    }

}




