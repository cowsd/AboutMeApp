//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 16/06/24.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor(red: 240/255, green: 220/255, blue: 180/255, alpha: 1.0)
        tabBar.unselectedItemTintColor = UIColor.gray
        
    }
}
