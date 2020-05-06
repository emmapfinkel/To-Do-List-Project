//
//  AddToDoViewController.swift
//  To-Do List Project
//
//  Created by Emma Finkel on 4/28/20.
//  Copyright © 2020 Emma Finkel. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {

    var previousVC = TableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var recommendedSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext

        let toDo = ToDoCD(context: context)
        
        toDo.title = titleTextField.text
        toDo.recommended = recommendedSwitch.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
    }
}
