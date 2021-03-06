//
//  GroupListCell.swift
//  Brachio_Colombia
//
//  Created by 山根大生 on 2021/03/16.
//

import UIKit

final class GroupListCell: UICollectionViewCell {
    
    @IBOutlet weak var profileNameLabel: UILabel! {
        didSet {
            profileNameLabel.text = ""
        }
    }
    @IBOutlet weak var profileImageView: UIImageView! {
        didSet {
            profileImageView.image = UIImage(systemName: "photo")
        }
    }
}
