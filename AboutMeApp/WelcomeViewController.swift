//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 09/06/24.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    var displayName: String!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(displayName ?? "")"
    }
    
}
