//
//  TableViewController.swift
//  To-Do List Project
//
//  Created by Emma Finkel on 4/27/20.
//  Copyright © 2020 Emma Finkel. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    func createToDos() -> [ToDo] {
        let book1 = ToDo()
        book1.name = "The Great Believers"
        book1.author = "Rebecca Makkai"
        book1.genre = "Historical Fiction"
        book1.important = true
             
        let book2 = ToDo()
        book2.name = "Goldfinch"
        book2.author = "Donna Tartt"
        book2.genre = "Novel"
             
        return [book1, book2]
    }
    
    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

      toDos = createToDos()
        
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
        
        if toDo.important {
            cell.textLabel?.text = "👍🏼" + toDo.name + ", " + toDo.author
        }
        else {
            cell.textLabel?.text = toDo.name + ", " + toDo.author
        }
            
        return cell
    }
    
    
    }


    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


