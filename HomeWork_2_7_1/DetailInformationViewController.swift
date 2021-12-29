//
//  DetailInformationViewController.swift
//  HomeWork_2_7_1
//
//  Created by Aliaksandr Rauko on 29.12.21.
//

import UIKit

class DetailInformationViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    var personInfo: PersonInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(personInfo.phone)"
        emailLabel.text = "Email: \(personInfo.email)"
    }
}
