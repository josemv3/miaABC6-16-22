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
        
    }
    
    let buttonImage: [String] = ["a","b","c","d","e","f","g","h","i"]
    let buttonImage2: [String] = ["j","k","l","m","n","o","p","q","r"]
    
    
    let headerTitle: [String] = ["ABCDEFGHI", "JKLMNOPQR"]
    
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
//            cell.cellButton.setTitle(buttonImage[indexPath.row], for: .normal)
//            cell.cellButton.setTitleColor(.clear, for: .normal)
            cell.title = buttonImage[indexPath.row]
//            cell.cellButton.contentMode = .center
//            cell.cellButton.imageView?.contentMode = .scaleAspectFit
            
            return cell
        } else {
            let image = UIImage(named: buttonImage2[indexPath.row])
            cell.cellButton.setImage(image, for: .normal)
            cell.title = buttonImage2[indexPath.row]
//            cell.cellButton.setTitle(buttonImage2[indexPath.row], for: .normal)
//            cell.cellButton.setTitleColor(.clear, for: .normal)
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


    @IBAction func wordButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func wordImageButtonPressed(_ sender: UIButton) {
    }
    
}





