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
    
    var favoriteAnimal: Animal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: UIColor.topGradientColor, bottomColor: UIColor.bottomGradientColor)
        
        animalImage.image = UIImage(named: favoriteAnimal.imageName)
        animalImage.layer.cornerRadius = 16
        
        animalLabel.text = favoriteAnimal.type.rawValue
        animalDescription.text = favoriteAnimal.description
    }
    
}
