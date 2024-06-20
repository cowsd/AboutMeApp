//
//  DetailedBioViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 15/06/24.
//

import UIKit

final class BiographyViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var biographyLabel: UILabel!
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        titleLabel.text = "\(user.person.fullName) Bio"
        biographyLabel.text = user.person.biography
    }
}
