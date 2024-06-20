//
//  FavoriteAnimalsViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 14/06/24.
//

import UIKit

final class FavoriteAnimalViewController: UIViewController {
 
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var animalDescription: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        animalImage.image = UIImage(named: "\(user.person.favoriteAnimal.imageName)")
        animalImage.layer.cornerRadius = 16
        
        animalLabel.text = user.person.favoriteAnimal.title
        animalDescription.text = user.person.favoriteAnimal.description
    }
    
}
