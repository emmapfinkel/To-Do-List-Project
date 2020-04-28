//
//  TableViewController.swift
//  To-Do List Project
//
//  Created by Emma Finkel on 4/27/20.
//  Copyright © 2020 Emma Finkel. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

      toDos = createToDos()
    }
    
    func createToDos() -> [ToDo] {
        let book1 = ToDo()
        book1.title = "The Great Believers"
        book1.recommended = true
             
        let book2 = ToDo()
        book2.title = "Goldfinch"
             
        return [book1, book2]
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let toDo = toDos[indexPath.row]
        
        if toDo.recommended {
            cell.textLabel?.text = "👍🏼" + toDo.title
        }
        else {
            cell.textLabel?.text = toDo.title
        }
            
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toDo = toDos[indexPath.row]
        
        performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let addVC = segue.destination as? AddToDoViewController {
            addVC.previousVC = self
        }
        
        if let completeVC = segue.destination as? CompleteToDoViewController {
            if let toDo = sender as? ToDo {
                completeVC.selectedToDo = toDo
                completeVC.previousVC = self
            }
        }
    }

    
    }


    

