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
    
    @IBOutlet weak var imageView: UIImageView!
    
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
        
        //Buttons border
        word1.layer.borderWidth = 2.5
        word1.layer.borderColor = UIColor.blackColor().CGColor
        word2.layer.borderWidth = 2.5
        word2.layer.borderColor = UIColor.blackColor().CGColor
        word3.layer.borderWidth = 2.5
        word3.layer.borderColor = UIColor.blackColor().CGColor
        wordButton.layer.borderWidth = 2.5
        wordButton.layer.borderColor = UIColor.blackColor().CGColor
        
        wordButton.titleLabel!.font = Styles.getFont()
      
        //Set Hearts
        heart1.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart1.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
        heart2.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart2.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
        heart3.image = heart1.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        heart3.tintColor = UIColor(red: 0xb1/255, green: 0x00/255, blue: 0x5d/255, alpha: 1.0)
      
        instructionLabel.text = "Enconte a palavra que não pertence ao conjunto"
        instructionLabel.layer.borderColor = UIColor.blackColor().CGColor
        instructionLabel.layer.borderWidth = 2.5
        
        imageView.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            self.imageView.frame.origin.y = self.imageView.frame.origin.y - 30
            self.view.layoutIfNeeded()
            
            self.imageView.alpha = 1
            
            }, completion: {(result) -> Void in
                
                UIView.animateWithDuration(1, animations: { () -> Void in
                    self.imageView.alpha = 0
                    self.imageView.frame.origin.y = self.imageView.frame.origin.y + 30
                    self.view.layoutIfNeeded()
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
