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
        @IBOutlet weak var avatarImage: UIImageView!
        
        var user: User!
        
        var firstName: String!
        var lastName: String!
        var occupation: String!
        var yearOfBirth: Int!
        var countryOfBirth: String!
        var avatar: String!
        var biography: String!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.addVerticalGradientLayer(topColor: UIColor.topGradientColor, bottomColor: UIColor.bottomGradientColor)
            
            titleFullName.text = "\(firstName ?? "") \(lastName ?? "")"
            firstNameLabel.text = firstName
            lastNameLabel.text = lastName
            occupationLabel.text = occupation
            yearOfBirthLabel.text = String(yearOfBirth)
            countryOfBirthLabel.text = countryOfBirth
            
            avatarImage.image = UIImage(named: avatar)
            avatarImage.layer.cornerRadius = avatarImage.frame.size.width / 2
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let detailedBioVC = segue.destination as? BiographyViewController {
                detailedBioVC.biography = biography
                detailedBioVC.firstName = firstName
            }
        }
        
    }
