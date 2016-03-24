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
    
    @IBOutlet weak var auxiliarView1: UIView!
    @IBOutlet weak var auxiliarView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set background image as newspaper
        self.view.backgroundColor = Styles.backgroundColor
        
        word1.font = Styles.getFont()
        word2.font = Styles.getFont()
        word3.font = Styles.getFont()
        word4.font = Styles.getFont()
        tutorialLabel.font = Styles.getFont()
      
        //Set Hearts
        heart1.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart1.tintColor = Styles.heartColor
        heart2.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart2.tintColor = Styles.heartColor
        heart3.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart3.tintColor = Styles.heartColor
      
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
        
        score.font = Styles.getFont()
        

        let attributedString2 = NSMutableAttributedString(string:"pontos", attributes:Styles.attributesScore)
        let attributedString3 = NSMutableAttributedString(string:" antes que o ")
        let attributedString4 = NSMutableAttributedString(string:"tempo", attributes:Styles.attributesTime)
        let attributedString5 = NSMutableAttributedString(string:" acabe.")
        
        
        let finalString = NSMutableAttributedString(string:"Faça o maior número de ")
        finalString.appendAttributedString(attributedString2)
        finalString.appendAttributedString(attributedString3)
        finalString.appendAttributedString(attributedString4)
        finalString.appendAttributedString(attributedString5)
        
        
        //tutorialLabel.attributedText = ProjectStrings.instructionString2
        tutorialLabel.text = ProjectStrings.instructionString2
        tutorialLabel.layer.borderWidth = 0
        
        tutorialLabel.layer.cornerRadius = tutorialLabel.frame.height/4
        tutorialLabel.layer.masksToBounds = true
        auxiliarView1.layer.cornerRadius = auxiliarView1.frame.height/4
        auxiliarView1.layer.masksToBounds = true
        
        auxiliarView1.alpha = 0.3
        
        auxiliarView2.layer.cornerRadius = auxiliarView2.frame.height/4
        auxiliarView2.layer.masksToBounds = true
        
        auxiliarView2.alpha = 0.3

    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1.3, delay: 0, options: .Repeat, animations: { () -> Void in
            
            self.auxiliarView1.alpha = 1
            self.countdown.textColor = UIColor.orangeColor()
            
            self.auxiliarView2.alpha = 1
            self.score.textColor = UIColor.blueColor()

            
            }, completion: {(result) -> Void in
                
                UIView.animateWithDuration(1.3, animations: { () -> Void in
                    
                    self.auxiliarView1.alpha = 0
                    self.countdown.textColor = UIColor.whiteColor()
                    
                    self.auxiliarView2.alpha = 0
                    self.countdown.textColor = UIColor.whiteColor()
                    
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
