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
    
    var displayUsername: String!
    var displayName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: UIColor.topGradientColor, bottomColor: UIColor.bottomGradientColor)
        greetingLabel.text = "Welcome, \(displayUsername ?? "")"
        nameLabel.text = "My name is \(displayName ?? "")"
    }
    
}

// MARK: - Set background color

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

extension UIColor {
    static var topGradientColor: UIColor {
        return UIColor(named: "TopGradientColor") ?? UIColor.green // Цвет по умолчанию
    }

    static var bottomGradientColor: UIColor {
        return UIColor(named: "BottomGradientColor") ?? UIColor.blue // Цвет по умолчанию
    }
}
