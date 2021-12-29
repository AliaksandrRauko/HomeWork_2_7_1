//
//  RersonInformationTabBarController.swift
//  HomeWork_2_7_1
//
//  Created by Aliaksandr Rauko on 29.12.21.
//

import UIKit

class RersonInformationTabBarController: UITabBarController {
    
    var personList = PersonInfo.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            //myFunc()
        // Do any additional setup after loading the view.
    }

    func myFunc() {
        
        for viewController in tabBarController?.viewControllers ?? [] {
            if let personListVS = viewController as? PersonListTableViewController {
                personListVS.personList = personList
            }
//            else if let navigationVS = viewController as? UINavigationController {
//                let userNameVS = navigationVS.topViewController as! UserNameViewController
//                userNameVS.finalName = userTextField.text
//            }
        }
    }
    
    
}
