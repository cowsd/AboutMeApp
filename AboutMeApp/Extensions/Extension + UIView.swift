//
//  Extension + UIView.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 20/06/24.
//

import UIKit


// MARK: - Set background color

extension UIView {

    func addVerticalGradientLayer() {
        let topColor = UIColor(named: "TopGradientColor") ?? UIColor.green
        let bottomColor = UIColor(named: "BottomGradientColor") ?? UIColor.black
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
    
}
