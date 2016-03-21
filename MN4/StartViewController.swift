//
//  StartViewController.swift
//  MN4
//
//  Created by Davi Rodrigues on 20/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    let defaults = NSUserDefaults.standardUserDefaults()

    ///Displays score
    @IBOutlet weak var scoreLabel: UILabel!
    ///Trophy image icon
    @IBOutlet weak var scoreIcon: UIImageView!
    
    
    @IBOutlet weak var tutorialButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set background image as newspaper
        self.view.backgroundColor = Styles.getTexture()
        
        tutorialButton.layer.borderColor = UIColor.blackColor().CGColor
        tutorialButton.layer.borderWidth = 2.5
        playButton.layer.borderColor = UIColor.blackColor().CGColor
        playButton.layer.borderWidth = 2.5
      
        //Set Trophy
        scoreIcon.image = scoreIcon.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        scoreIcon.tintColor = UIColor(red: 255/255, green: 200/255, blue: 0/255, alpha: 1.0)
        scoreIcon.layer.shadowOffset = CGSize(width: 1, height: 1)
        scoreIcon.layer.shadowOpacity = 1
        scoreIcon.layer.shadowRadius = 1

        //Set font
        scoreLabel.font = Styles.getFont()
        playButton.titleLabel!.font = Styles.getFont()
        tutorialButton.titleLabel!.font = Styles.getFont()
        
        // Creates the dataBase
        WordDataBase.setDataBase()
        
    }
    
    override func viewWillAppear(animated: Bool) {

        let record = defaults.integerForKey("Record")
        scoreLabel.text = String(format: "%03d", record)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
    // Hide status bar from this view
    override func prefersStatusBarHidden() -> Bool {
      return true
    }
  
    @IBAction func tutorialButtonHandler(sender: AnyObject) {
        performSegueWithIdentifier("toTutorialViewController", sender: self)
    }

    @IBAction func playButtonHandler(sender: AnyObject) {
        let level = Level()
        level.setLevel()
        performSegueWithIdentifier("toGameViewController", sender: self)
    }

    @IBAction func returnToStart(sender: UIStoryboardSegue) {
        
    }
}
