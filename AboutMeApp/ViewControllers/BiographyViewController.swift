//
//  DetailedBioViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 15/06/24.
//

import UIKit

final class BiographyViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var biographyLabel: UILabel!
    
    var biography: String!
    var firstName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: UIColor.topGradientColor, bottomColor: UIColor.bottomGradientColor)
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        firstNameLabel.text = "\(firstName ?? "") Bio"
        biographyLabel.text = biography
    }
}
