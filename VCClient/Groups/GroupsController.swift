//
//  GroupsController.swift
//  VCClient
//
//  Created by Игорь Павлов on 15.11.2022.
//

import UIKit

class GroupsController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewGroups: UITableView!
    
    var groupsData: [(String, UIImage)] = [("Анна Помогает", UIImage(named: "annaPomogaet")!),
                                           ("Пушкин", UIImage(named: "pushkin")!),
                                           ("Ингри", UIImage(named: "ingri")!)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewGroups.delegate = self
        tableViewGroups.dataSource = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell") as! GroupsViewCell
        let index = indexPath.row
        let name = groupsData[index].0
        let image = groupsData[index].1
        
        cell.setData(name: name, image: image)
        
        return cell
        
    }
        
}
    
