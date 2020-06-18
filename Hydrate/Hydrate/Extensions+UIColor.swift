//
//  Extensions+UIColor.swift
//  Hydrate
//
//  Created by Joshua Rutkowski on 6/18/20.
//  Copyright © 2020 Hydrate. All rights reserved.
//

import UIKit

extension UIColor {
    
    // Setup custom colours we can use throughout the app using hex values
    static let undeadWhite = UIColor(hex: 0xd8d8d8)
    static let sicklySmurfBlue = UIColor(hex: 0x4b8a9c)
    static let ravenClawBlue = UIColor(hex: 0x363e56)
    
    // Create a UIColor from RGB
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    
    // Create a UIColor from a hex value (E.g 0x000000)
    convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF,
            a: a
        )
    }
}
