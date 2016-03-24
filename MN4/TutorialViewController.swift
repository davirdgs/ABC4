//
//  TutorialViewController.swift
//  MN4
//
//  Created by Davi Rodrigues on 20/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    //@IBOutlet weak var tutorialView: Tutorial1!
    
    @IBOutlet weak var wordButton: UIButton!
    @IBOutlet weak var word1: UILabel!
    @IBOutlet weak var word2: UILabel!
    @IBOutlet weak var word3: UILabel!
    
    //@IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
    @IBOutlet weak var instructionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        word1.font = Styles.getFont()
        word2.font = Styles.getFont()
        word3.font = Styles.getFont()
        instructionLabel.font = Styles.getFont()
        
        self.view.backgroundColor = Styles.backgroundColor
        
        //Buttons border
        word1.layer.borderWidth = 0
        //word1.layer.borderColor = UIColor.blackColor().CGColor
        word2.layer.borderWidth = 0
        //word2.layer.borderColor = UIColor.blackColor().CGColor
        word3.layer.borderWidth = 0
        //word3.layer.borderColor = UIColor.blackColor().CGColor
        wordButton.layer.borderWidth = 0
        //wordButton.layer.borderColor = UIColor.blackColor().CGColor
        
        wordButton.titleLabel!.font = Styles.getFont()
        
        word1.layer.cornerRadius = word1.frame.height/4
        word1.layer.masksToBounds = true
        word2.layer.cornerRadius = word2.frame.height/4
        word2.layer.masksToBounds = true
        word3.layer.cornerRadius = word3.frame.height/4
        word3.layer.masksToBounds = true
        wordButton.layer.cornerRadius = wordButton.frame.height/4
        wordButton.layer.masksToBounds = true
        
        //Set Hearts
        heart1.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart1.tintColor = Styles.heartColor
        heart2.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart2.tintColor = Styles.heartColor
        heart3.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart3.tintColor = Styles.heartColor
      
        instructionLabel.text = ProjectStrings.instructionString1
        //instructionLabel.layer.borderColor = UIColor.blackColor().CGColor
        instructionLabel.layer.borderWidth = 0
        
        instructionLabel.layer.cornerRadius = instructionLabel.frame.height/4
        instructionLabel.layer.masksToBounds = true
        
        //imageView.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            self.wordButton.alpha = 0.3
            
            /*
            self.imageView.frame.origin.y = self.imageView.frame.origin.y - 30
            self.view.layoutIfNeeded()
            
            self.imageView.alpha = 1
*/
            
            }, completion: {(result) -> Void in
                
                UIView.animateWithDuration(1, animations: { () -> Void in
                    
                    self.wordButton.alpha = 1
                    /*
                    self.imageView.alpha = 0
                    self.imageView.frame.origin.y = self.imageView.frame.origin.y + 30
                    self.view.layoutIfNeeded()
*/
                })

        }) //End of completion
    }
  
    // Hide status bar from this view
    override func prefersStatusBarHidden() -> Bool {
      return true
    }
  
    @IBAction func buttonHandler(sender: AnyObject) {
        performSegueWithIdentifier("toTutorial2ViewController", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
