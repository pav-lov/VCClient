//
//  FriendsViewCell.swift
//  VCClient
//
//  Created by Игорь Павлов on 14.11.2022.
//

import UIKit

class FriendsViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
    
    func setData(name: String, image: UIImage) {
        nameLabel.text = name
        logoImage.image = image
    }

}
