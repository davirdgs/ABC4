//
//  Tutorial1.swift
//  MN4
//
//  Created by Davi Rodrigues on 25/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class Tutorial1: UIView {
    
    @IBOutlet weak var word1: UILabel!
    @IBOutlet weak var word3: UILabel!
    @IBOutlet weak var word4: UILabel!
    
    
    //@IBOutlet weak var word2Button: UIButton!

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var lifes: UILabel!
    
    
    override func awakeFromNib() {
        word1.font = Styles.getFont()
        //word2Button.titleLabel!.font = Styles.getFont()
        word3.font = Styles.getFont()
        word4.font = Styles.getFont()
        
        score.font = Styles.getFont()
        lifes.font = Styles.getFont()
        
        //word2.layer.borderColor = UIColor.blackColor().CGColor
        //word2.layer.borderWidth = 0.5
    }
    

}
