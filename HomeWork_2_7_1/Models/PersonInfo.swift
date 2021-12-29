//
//  PersonInfo.swift
//  HomeWork_2_7_1
//
//  Created by Aliaksandr Rauko on 28.12.21.
//

import Foundation



struct PersonInfo {
    let name: String
    let surname: String
    let email: String
    let phone: String
    var nameAndSurname: String {
        "\(name) \(surname)"
    }
}

extension PersonInfo {
    
    static func getPersonsList() -> [PersonInfo] {
        
        let names = DataManager.Shared.names.shuffled()
        let surnames = DataManager.Shared.surnames.shuffled()
        let emails = DataManager.Shared.emails.shuffled()
        let phones = DataManager.Shared.phones.shuffled()
        var person = [PersonInfo]()
        
        for number in 0...names.count - 1 {
            person.append(PersonInfo(name: names[number], surname: surnames[number],
                                     email: emails[number], phone: phones[number]))
        }
        return person
    }
}
