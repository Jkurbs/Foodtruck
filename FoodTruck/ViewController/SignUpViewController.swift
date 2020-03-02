//
//  LoginViewController.swift
//  FoodTruck
//
//  Created by Kerby Jean on 3/2/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet var titleLabel: UILabel?
    @IBOutlet var nameTextField: UITextField?
    @IBOutlet var passswordTextField: UITextField?
    
    var choice: String? 

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel?.text = "\(choice) registration"
    }

}
