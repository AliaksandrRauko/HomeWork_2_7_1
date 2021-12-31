//
//  RersonInformationTabBarController.swift
//  HomeWork_2_7_1
//
//  Created by Aliaksandr Rauko on 29.12.21.
//

import UIKit

class RersonInformationTabBarController: UITabBarController {
    
    let personList = PersonInfo.getPersonsList()
        
    override func viewDidLoad() {
        super.viewDidLoad()
            HandOverPersonInfo()
    }

    func HandOverPersonInfo() {
        for viewController in viewControllers ?? [] {
            if let navigationVS = viewController as? UINavigationController {
                if let personListVC = navigationVS.topViewController as? PersonListTableViewController {
                    personListVC.personList = personList
                } else if let personContactVC = navigationVS.topViewController as? PersonContactTableViewController {
                    personContactVC.personList = personList
                }
            }
        }
    }    
    
}
