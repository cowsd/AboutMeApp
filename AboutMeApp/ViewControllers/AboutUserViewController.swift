//
//  AboutUserViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 13/06/24.
//

import UIKit

    final class AboutUserViewController: UIViewController {

        @IBOutlet weak var firstNameLabel: UILabel!
        @IBOutlet weak var lastNameLabel: UILabel!
        @IBOutlet weak var titleFullName: UILabel!
        @IBOutlet weak var occupationLabel: UILabel!
        @IBOutlet weak var yearOfBirthLabel: UILabel!
        @IBOutlet weak var countryOfBirthLabel: UILabel!
        
        @IBOutlet weak var avatarImage: UIImageView! {
            didSet {
                avatarImage.layer.cornerRadius = avatarImage.frame.size.width / 2
            }
        }
        
        var user: User!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addVerticalGradientLayer()
            
            avatarImage.image = UIImage(named: "\(user.person.avatarFileName)")
            titleFullName.text = user.person.fullName
            firstNameLabel.text = user.person.firstName
            lastNameLabel.text = user.person.lastName
            occupationLabel.text = user.person.occupation
            yearOfBirthLabel.text = String(user.person.yearOfBirth)
            countryOfBirthLabel.text = user.person.countryOfBirth
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let detailedBioVC = segue.destination as? BiographyViewController {
                detailedBioVC.user = user
            }
        }
        
    }
