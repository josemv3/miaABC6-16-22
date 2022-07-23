//
//  ViewController.swift
//  miaABC 6-16-22
//
//  Created by Joey Rubin on 6/16/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var cViewMain: UICollectionView!
        
    var footerView: FooterView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cViewMain.delegate = delegate
        cViewMain.layer.borderWidth = 1
        cViewMain.layer.borderColor = UIColor(named: "mainOrange")?.cgColor
        
    }
    
    let stickers = [
            Sticker(letterImageName: "a", itemImageName: "airplane"),
    //        Sticker(letterImageName: "a", itemImageName: "apple"),
    //        Sticker(letterImageName: "a", itemImageName: "alligator"),
    //
            Sticker(letterImageName: "b", itemImageName: "bat"),
    //        Sticker(letterImageName: "b", itemImageName: "bee"),
    //        Sticker(letterImageName: "b", itemImageName: "boat"),
            
            Sticker(letterImageName: "c", itemImageName: "cake"),
    //        Sticker(letterImageName: "c", itemImageName: "car"),
    //        Sticker(letterImageName: "c", itemImageName: "cat"),
            
            Sticker(letterImageName: "d", itemImageName: "dinosaur"),
    //        Sticker(letterImageName: "d", itemImageName: "dog"),
    //        Sticker(letterImageName: "d", itemImageName: "donut"),
            
            Sticker(letterImageName: "e", itemImageName: "eagle"),
    //        Sticker(letterImageName: "e", itemImageName: "eat"),
    //        Sticker(letterImageName: "e", itemImageName: "elephant"),
            
            Sticker(letterImageName: "f", itemImageName: "fish"),
    //        Sticker(letterImageName: "f", itemImageName: "frog"),
    //        Sticker(letterImageName: "f", itemImageName: "flower"),
            
            Sticker(letterImageName: "g", itemImageName: "garden"),
    //        Sticker(letterImageName: "g", itemImageName: "ghost"),
    //        Sticker(letterImageName: "g", itemImageName: "guitar"),
    //
            Sticker(letterImageName: "h", itemImageName: "hammer"),
    //        Sticker(letterImageName: "h", itemImageName: "hippo"),
    //        Sticker(letterImageName: "h", itemImageName: "horse"),
            
            Sticker(letterImageName: "i", itemImageName: "iceCream"),
    //        Sticker(letterImageName: "i", itemImageName: "iceSkate"),
    //        Sticker(letterImageName: "i", itemImageName: "island"),
        ]
    
    let buttonImage: [String] = ["a","b","c","d","e","f","g","h","i"]
    let buttonImage2: [String] = ["j","k","l","m","n","o","p","q","r"]
    let wordImagePic: [String: String] = ["a": "alligator", "b": "boat", "c": "cat", "d": "dinosaur","e": "elephant", "f": "flower","g": "ghost","h": "hippo","i": "iceCream"]
    
    let headerTitle: [String] = ["ABCDEFGHI", "JKLMNOPQR"]
    static var cellTitle = ""
    
    
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
            cell.set(stickers[indexPath.row])
            return cell
        } else {

            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
//            print(cell.title)
//
//           }
        footerView?.set(stickers[indexPath.row])
    }

    
    //To populate HEADER & FOOTER with data
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionFooter {
            
            footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FooterView.reuseIdentifier, for: indexPath) as? FooterView
            
//            guard let FooterView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FooterView.reuseIdentifier, for: indexPath) as? FooterView else {
//                fatalError("HeaderView cannot be created")
//            }
//
//            FooterView.footerImageView.image = UIImage(named: "boat")
//
////            FooterView.backgroundColor = .systemRed
////            FooterView.headerLabel.text = headerTitle[indexPath.section]
////            HeaderView.headerLabel.text = "ABC"
//
////            let image = UIImage(named: wordImagePic[cellTitle] ?? "error")
////            FooterView.footerImage = UIImageView(image: image)
////
////            DispatchQueue.main.async { [weak self] in
////               guard let self = self else { return }
////                self.cViewMain.reloadData()
////            }
            
            
            return footerView!
        }
        
        
        guard let HeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.reuseIdentifier, for: indexPath) as? HeaderView else {
            fatalError("HeaderView cannot be created")
        }
        
        HeaderView.headerLabel.text = headerTitle[indexPath.section]
        //HeaderView.headerLabel.text = "ABC"
        
        return HeaderView
    }

    
}





