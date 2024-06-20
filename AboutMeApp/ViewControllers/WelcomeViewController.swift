//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 09/06/24.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        greetingLabel.text = "Welcome, \(user.username)"
        nameLabel.text = "My name is \(user.person.firstName)"
    }
    
}

