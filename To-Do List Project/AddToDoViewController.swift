//
//  AddToDoViewController.swift
//  To-Do List Project
//
//  Created by Emma Finkel on 4/28/20.
//  Copyright © 2020 Emma Finkel. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = TableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var recommendedSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.title = titleText
            toDo.recommended = recommendedSwitch.isOn
        }
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
}
