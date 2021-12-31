//
//  DataManager.swift
//  HomeWork_2_7_1
//
//  Created by Aliaksandr Rauko on 28.12.21.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Jhon", "Aaron" , "Tim", "Ted",
                "Steven", "Sharon","Nicola",
                "Allan", "Bruce", "Carl"]
    
    let surnames = ["Smith", "Dow" , "Black", "Green",
                "Kolt", "Magnum","Werty",
                "Williams", "Label", "Hertuo"]
    
    let emails = ["www.Smith.com", "www.Dow.com" , "www.vBlack.com", "www.Green.com",
                "www.Kolt.com", "www.Magnum.com","www.Werty.com",
                "www.Williams.com", "www.Label.com", "www.Hertuo.com"]
    
    let phones = ["1", "2" , "3", "4",
                "5", "6","7",
                "8", "9", "10"]
    
    private init() {}
    
}

