//
//  Tutorial3ViewController.swift
//  ABC4
//
//  Created by Davi Rodrigues on 28/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class Tutorial3ViewController: UIViewController {

    @IBOutlet weak var word1: UILabel!
    @IBOutlet weak var word2: UILabel!
    @IBOutlet weak var word3: UILabel!
    @IBOutlet weak var word4: UILabel!
    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var arrow: UIImageView!
    
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        //Set background image as newspaper
        self.view.backgroundColor = Styles.getTexture()
        
        arrow.alpha = 0
        
        word1.font = Styles.getFont()
        word2.font = Styles.getFont()
        word3.font = Styles.getFont()
        word4.font = Styles.getFont()
        tutorialLabel.font = Styles.getFont()
        score.font = Styles.getFont()
        
        tutorialLabel.text = "Você tem um número limitado de vidas"
        tutorialLabel.layer.borderColor = UIColor.blackColor().CGColor
        tutorialLabel.layer.borderWidth = 2.5
        
        //Buttons border
        word1.layer.borderWidth = 2.5
        word1.layer.borderColor = UIColor.blackColor().CGColor
        word2.layer.borderWidth = 2.5
        word2.layer.borderColor = UIColor.blackColor().CGColor
        word3.layer.borderWidth = 2.5
        word3.layer.borderColor = UIColor.blackColor().CGColor
        word4.layer.borderWidth = 2.5
        word4.layer.borderColor = UIColor.blackColor().CGColor
      
        //Set Hearts
        heart1.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart1.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
        heart2.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart2.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
        heart3.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart3.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
    }
  
    override func viewDidAppear(animated: Bool) {
        
        
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            self.arrow.alpha = 1
            self.arrow.frame.origin.y = self.arrow.frame.origin.y - 30
            self.view.layoutIfNeeded()
            
            }, completion: {(result) -> Void in
                
                UIView.animateWithDuration(1, animations: { () -> Void in
                    self.arrow.alpha = 0
                    self.arrow.frame.origin.y = self.arrow.frame.origin.y + 30
                    self.view.layoutIfNeeded()
                })
                
        }) //End of completion
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
