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
    //@IBOutlet weak var arrow: UIImageView!
    
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        //Set background image as newspaper
        self.view.backgroundColor = Styles.backgroundColor
        
        //arrow.alpha = 0
        
        word1.font = Styles.getFont()
        word2.font = Styles.getFont()
        word3.font = Styles.getFont()
        word4.font = Styles.getFont()
        tutorialLabel.font = Styles.getFont()
        score.font = Styles.getFont()
        
        tutorialLabel.text = ProjectStrings.instructionString3
        //tutorialLabel.layer.borderColor = UIColor.blackColor().CGColor
        tutorialLabel.layer.borderWidth = 0
        
        tutorialLabel.layer.cornerRadius = tutorialLabel.frame.height/4
        tutorialLabel.layer.masksToBounds = true
        
        //Buttons border
        word1.layer.borderWidth = 0
        word2.layer.borderWidth = 0
        word3.layer.borderWidth = 0
        word4.layer.borderWidth = 0
        
        word1.layer.cornerRadius = word1.frame.height/4
        word1.layer.masksToBounds = true
        word2.layer.cornerRadius = word2.frame.height/4
        word2.layer.masksToBounds = true
        word3.layer.cornerRadius = word3.frame.height/4
        word3.layer.masksToBounds = true
        word4.layer.cornerRadius = word4.frame.height/4
        word4.layer.masksToBounds = true
      
        //Set Hearts
        heart1.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart1.tintColor = Styles.heartColor
        heart2.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart2.tintColor = Styles.heartColor
        heart3.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart3.tintColor = Styles.heartColor
    }
  
    override func viewDidAppear(animated: Bool) {
        
        
        
        UIView.animateWithDuration(1.3, delay: 0, options: .Repeat ,animations: { () -> Void in
            
            self.heart1.tintColor = UIColor.whiteColor()
            self.heart2.tintColor = UIColor.whiteColor()
            self.heart3.tintColor = UIColor.whiteColor()

            }, completion: {(result) -> Void in
                
                UIView.animateWithDuration(1.3, animations: { () -> Void in
                    
                    self.heart1.tintColor = Styles.heartColor
                    self.heart2.tintColor = Styles.heartColor
                    self.heart3.tintColor = Styles.heartColor
                    
                })
                
        }) //End of completion
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
