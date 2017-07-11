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
        NSForegroundColorAttributeName : UIColor.blue,
    ]
    
    static let attributesTime = [
        NSFontAttributeName : fontStyle,
        NSForegroundColorAttributeName : UIColor.orange,
        
    ]
    ///Background image: newspaper
    static let backgroundTexture = UIColor(patternImage: UIImage(named: "newspaper")!)
    static let backgroundColor = UIColor(red: 76/255, green: 90/255, blue: 255/255, alpha: 1)
    static let heartColor = UIColor(red: 255/255, green: 100/255, blue: 100/255, alpha: 1)
    
    ///Font: American typewriter 25 black
    static func getFont() -> UIFont {
        return fontStyle
    }
    
    ///Background image: newspaper
    static func getTexture() -> UIColor {
        return backgroundTexture
    }
   
}
