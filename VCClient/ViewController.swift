//
//  ViewController.swift
//  VCClient
//
//  Created by Игорь Павлов on 07.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let login = "admin"
    private let pass = "1234"
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let loginInput = loginField.text
        let passInput = passwordField.text
        
        if (loginInput == login) && (passInput == pass) {
            
            self.loginField.text = ""
            self.passwordField.text = ""
            
            return true
        } else {
            let alert = UIAlertController(title: "Ошибка",
                                           message: "Вы ввели неверный логин или пароль",
                                           preferredStyle: .alert)
            let action = UIAlertAction(title: "ok", style: .default) {
                (action) in
                self.loginField.text = ""
                self.passwordField.text = ""
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
           
            return false
            
        }
    }
}

