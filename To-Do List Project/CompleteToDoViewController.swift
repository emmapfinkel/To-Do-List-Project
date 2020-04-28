//
//  CompleteToDoViewController.swift
//  To-Do List Project
//
//  Created by Emma Finkel on 4/28/20.
//  Copyright © 2020 Emma Finkel. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    var previousVC = TableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo.title
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
