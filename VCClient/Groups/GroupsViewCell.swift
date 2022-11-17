//
//  GroupsViewCell.swift
//  VCClient
//
//  Created by Игорь Павлов on 15.11.2022.
//

import UIKit

class GroupsViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    func setData(name: String, image: UIImage) {
        nameLabel.text = name
        imageLabel.image = image
    }
}
