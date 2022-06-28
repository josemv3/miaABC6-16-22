//
//  FooterView.swift
//  miaABC 6-16-22
//
//  Created by Joey Rubin on 6/22/22.
//

import UIKit

class FooterView: UICollectionReusableView {
    static let reuseIdentifier = String(describing: FooterView.self)
    static var animal: Animal?
    
    @IBOutlet weak var footerImage: UIImageView!
    @IBOutlet weak var footerButton: UIButton!
}
