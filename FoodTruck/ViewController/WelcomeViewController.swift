//
//  WelcomeViewController.swift
//  FoodTruck
//
//  Created by Kerby Jean on 3/2/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - Properties 

    @IBOutlet var choiceButtons: [UIButton]!
    
    
    @IBAction func choiceTapped(_ sender: UIButton) {
        let choice = sender.titleLabel?.text!
        performSegue(withIdentifier: Segue.AuthSegue.rawValue, sender: choice)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SignUpViewController {
            if segue.identifier == Segue.AuthSegue.rawValue {
                destination.choice = sender as? String
            }
        }
    }
}
