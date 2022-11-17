//
//  FriendsViewController.swift
//  VCClient
//
//  Created by Игорь Павлов on 14.11.2022.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var friendsData: [(String, UIImage)] = [("Igor", UIImage(named: "Igor")!),
                                                    ("Maks", UIImage(named: "Maks")!),
                                                    ("Julia", UIImage(named: "Julia")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell") as! FriendsViewCell
        
        let index = indexPath.row
        let name = friendsData[index].0
        let image = friendsData[index].1
        
        cell.setData(name: name, image: image)
        
        return cell
    }

    
}
