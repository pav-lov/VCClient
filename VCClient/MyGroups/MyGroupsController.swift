//
//  MyGroupsController.swift
//  VCClient
//
//  Created by Игорь Павлов on 17.11.2022.
//

import UIKit

class MyGroupsController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewMyGroups: UITableView!
    
    var groups = [(String, UIImage)] () // создаем пустой массив
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMyGroups.dataSource = self
        tableViewMyGroups.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Получаем ячейку из пула
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupsCell", for: indexPath) as! MyGroupsCell
        
        // Получаем группу для конкретной строки
        //let group = groups[indexPath.row]
        
        let index = indexPath.row
        let name = groups[index].0
        let image = groups[index].1
        
        // Устанавливаем группу и надпись изображение ячейки
        cell.nameLabel.text = name
        cell.imageLabel.image = image
        
        return cell
    }

    @IBAction func addGroup(segue: UIStoryboardSegue) {
        // Проверяем идентификатор, чтобы убедиться, что это нужный переход
            if segue.identifier == "addGroup" {
                // Получаем ссылку на контроллер, с которого осуществлен переход
                guard let allGroupsController = segue.source as? GroupsController else { return }
                // Получаем индекс выделенной ячейки
                if let indexPath = allGroupsController.tableViewGroups.indexPathForSelectedRow {
                    // Получаем группу по индексу
                    let group = allGroupsController.groupsData[indexPath.row]
                    // Если не содержится, добавляем группу в список выбранных групп
                    
                    if !groups.contains(where: {$0 == group}) {
                        groups.append(group)
                      }
                    // Обновляем таблицу
                    tableViewMyGroups.reloadData()
        
                }
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    // Если была нажата кнопка «Удалить»
    if editingStyle == .delete {
        // Удаляем город из массива
        groups.remove(at: indexPath.row)
        // И удаляем строку из таблицы
        tableView.deleteRows(at: [indexPath], with: .fade) }
    }
        
}

