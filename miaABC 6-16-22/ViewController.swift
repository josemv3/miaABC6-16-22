//
//  ViewController.swift
//  miaABC 6-16-22
//
//  Created by Joey Rubin on 6/16/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var cViewMain: UICollectionView!
    @IBOutlet weak var wordImage: UIImageView!
    @IBOutlet weak var wordButton: UIButton!
    @IBOutlet weak var wordImageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cViewMain.delegate = delegate
        cViewMain.decelerationRate = .fast
        cViewMain.layer.borderWidth = 1
        cViewMain.layer.borderColor = UIColor(named: "mainOrange")?.cgColor
        
    }
    
    let buttonImage: [String] = ["a","b","c","d","e","f","g","h","i"]
    let buttonImage2: [String] = ["j","k","l","m","n","o","p","q","r"]
    let wordImagePic: [String: String] = ["a": "alligator", "b": "boat", "c": "cat", "d": "dinosaur","e": "elephant", "f": "flower","g": "ghost","h": "hippo","i": "iceCream"]
    
    let headerTitle: [String] = ["ABCDEFGHI", "JKLMNOPQR"]
    var cellTitle = ""
    
    
    let delegate = CollectionViewDelegate(numberOfItemsPerRow: 3, interItemSpacing: 10)
        

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cViewMain.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = UIColor(named: "mainOrange")
        
        if indexPath.section == 0 {
            let image = UIImage(named: buttonImage[indexPath.row])
            cell.cellButton.setImage(image, for: .normal)
            cell.title = buttonImage[indexPath.row]
            cellTitle = cell.title
            wordImage.image = UIImage(named: "alligator")
            
            return cell
        } else {
            let image = UIImage(named: buttonImage2[indexPath.row])
            cell.cellButton.setImage(image, for: .normal)
            cell.title = buttonImage2[indexPath.row]
            cellTitle = cell.title

            return cell
        }
    }

    
    //To populate HEADER with data
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let HeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.reuseIdentifier, for: indexPath) as? HeaderView else {
            fatalError("HeaderView cannot be created")
        }
        
        HeaderView.headerLabel.text = headerTitle[indexPath.section]
        //HeaderView.headerLabel.text = "ABC"
        
        return HeaderView
    }
    
    func snapToCenter() {
        let centerPoint = view.convert(view.center, to: cViewMain)
        guard let centerIndexPath = cViewMain.indexPathForItem(at: centerPoint) else { return }
        cViewMain.scrollToItem(at: centerIndexPath, at: .centeredVertically, animated: true)
        
    }

    @IBAction func wordButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func wordImageButtonPressed(_ sender: UIButton) {
    }
    
}




extension ViewController : UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        snapToCenter()
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            snapToCenter()
        }
    }
    
}




