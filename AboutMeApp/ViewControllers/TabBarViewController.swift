//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 16/06/24.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor(red: 240/255, green: 220/255, blue: 180/255, alpha: 1.0)
        tabBar.unselectedItemTintColor = UIColor.gray
        
        transferData()
        
    }
    
    private func transferData() {
        
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController
                guard let aboutUserVC = aboutUserVC as? AboutUserViewController else {
                    return
                }
                aboutUserVC.user = user
            } else if let favoriteAnimalsVC = $0 as? FavoriteAnimalViewController {
                favoriteAnimalsVC.user = user
            }
        }
        
    }
    
}
