//
//  PersonListTableViewController.swift
//  HomeWork_2_7_1
//
//  Created by Aliaksandr Rauko on 29.12.21.
//

import UIKit

class PersonListTableViewController: UITableViewController {
    
    var personList: [PersonInfo]!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.nameAndSurname
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let trackDetailsInformationVC = segue.destination as? DetailInformationViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personInfo = personList[indexPath.row]
        trackDetailsInformationVC.personInfo = personInfo
    }    
}



