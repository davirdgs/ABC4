//
//  Styles.swift
//  MN4
//
//  Created by Davi Rodrigues on 21/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class Styles: NSObject {
    
    ///Font: American typewriter 25 black
    static let fontStyle = UIFont(descriptor: UIFontDescriptor(name: "American Typewriter", size: 25.0), size: 25.0)
    
    static let attributesScore = [
        NSFontAttributeName : fontStyle,
        NSForegroundColorAttributeName : UIColor.blueColor(),
    ]
    
    static let attributesTime = [
        NSFontAttributeName : fontStyle,
        NSForegroundColorAttributeName : UIColor.orangeColor(),
        
    ]
    ///Background image: newspaper
    static let backgroundTexture = UIColor(patternImage: UIImage(named: "newspaper")!)
    
    ///Font: American typewriter 25 black
    static func getFont() -> UIFont {
        return fontStyle
    }
    
    ///Background image: newspaper
    static func getTexture() -> UIColor {
        return backgroundTexture
    }
   
}
