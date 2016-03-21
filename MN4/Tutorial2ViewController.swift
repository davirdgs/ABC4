//
//  Tutorial2ViewController.swift
//  MN4
//
//  Created by Davi Rodrigues on 27/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class Tutorial2ViewController: UIViewController, UIGestureRecognizerDelegate {

    
    @IBOutlet weak var word1: UILabel!
    @IBOutlet weak var word2: UILabel!
    @IBOutlet weak var word3: UILabel!
    @IBOutlet weak var word4: UILabel!
    
    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var countdown: UILabel!
  
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
  
    @IBOutlet weak var verticalArrow: UIImageView!
    @IBOutlet weak var verticalArrow2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        verticalArrow.alpha = 0
        verticalArrow2.alpha = 0
        
        //Set background image as newspaper
        self.view.backgroundColor = Styles.getTexture()
        
        word1.font = Styles.getFont()
        word2.font = Styles.getFont()
        word3.font = Styles.getFont()
        word4.font = Styles.getFont()
        tutorialLabel.font = Styles.getFont()
      
        //Set Hearts
        heart1.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart1.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
        heart2.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart2.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
        heart3.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart3.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
      
        //Buttons border
        word1.layer.borderWidth = 2.5
        word1.layer.borderColor = UIColor.blackColor().CGColor
        word2.layer.borderWidth = 2.5
        word2.layer.borderColor = UIColor.blackColor().CGColor
        word3.layer.borderWidth = 2.5
        word3.layer.borderColor = UIColor.blackColor().CGColor
        word4.layer.borderWidth = 2.5
        word4.layer.borderColor = UIColor.blackColor().CGColor
        
        score.font = Styles.getFont()
        score.textColor = UIColor.blueColor()
        
        countdown.textColor = UIColor.orangeColor()
        
        //inclinedArrow.transform = CGAffineTransformMakeRotation(-45*CGFloat(M_PI)/180)
        

        let attributedString2 = NSMutableAttributedString(string:"pontos", attributes:Styles.attributesScore)
        let attributedString3 = NSMutableAttributedString(string:" antes que o ")
        let attributedString4 = NSMutableAttributedString(string:"tempo", attributes:Styles.attributesTime)
        let attributedString5 = NSMutableAttributedString(string:" acabe.")
        
        
        let finalString = NSMutableAttributedString(string:"Faça o maior número de ")
        finalString.appendAttributedString(attributedString2)
        finalString.appendAttributedString(attributedString3)
        finalString.appendAttributedString(attributedString4)
        finalString.appendAttributedString(attributedString5)
        
        
        tutorialLabel.attributedText = finalString
        tutorialLabel.layer.borderColor = UIColor.blackColor().CGColor
        tutorialLabel.layer.borderWidth = 2.5

    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            self.verticalArrow.alpha = 1
            self.verticalArrow2.alpha = 1
            self.verticalArrow.frame.origin.y = self.verticalArrow.frame.origin.y - 30
            self.verticalArrow2.frame.origin.y = self.verticalArrow2.frame.origin.y - 30
            //self.inclinedArrow.frame.origin.x = self.inclinedArrow.frame.origin.x - 30
            self.view.layoutIfNeeded()
            
            }, completion: {(result) -> Void in
                
                UIView.animateWithDuration(1, animations: { () -> Void in
                    
                    self.verticalArrow.alpha = 0
                    self.verticalArrow2.alpha = 0
                    self.verticalArrow.frame.origin.y = self.verticalArrow.frame.origin.y + 30
                    self.verticalArrow2.frame.origin.y = self.verticalArrow2.frame.origin.y + 30
                    //self.inclinedArrow.frame.origin.x = self.inclinedArrow.frame.origin.x + 30
                    self.view.layoutIfNeeded()
                })
                
        }) //End of completion
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func tapReceived(sender: AnyObject) {
        performSegueWithIdentifier("toTutorial3ViewController", sender: self)
    }

}
