//
//  PersonsContactTableViewController.swift
//  HomeWork_2_7_1
//
//  Created by Aliaksandr Rauko on 28.12.21.
//

import UIKit

class PersonContactTableViewController: UITableViewController {

    var personList: [PersonInfo]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       return personList.count
    }
       
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
       return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].nameAndSurname
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactName", for: indexPath)
        
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
                
        return cell
    }

    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
}
