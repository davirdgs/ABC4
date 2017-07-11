//
//  GameOverViewController.swift
//  MN4
//
//  Created by Davi Rodrigues on 24/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    
    @IBOutlet weak var trophyImage: UIImageView!
    @IBOutlet weak var recordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let score = PlayerStatus.getScore()
        let defaults = UserDefaults.standard
        let record = defaults.integer(forKey: "Record")

        //Set background image as newspaper
        self.view.backgroundColor = Styles.backgroundColor
        
        gameOverLabel.font = Styles.getFont()
        scoreLabel.font = Styles.getFont()
        recordLabel.font = Styles.getFont()
        
        gameOverLabel.text = "Game Over"
        scoreLabel.text = NSString(format: ProjectStrings.score as NSString, score) as String
        recordLabel.text = ProjectStrings.newRecord
        
        if(PlayerStatus.score > record) {
            PlayerStatus.saveRecord()
            trophyImage.image = trophyImage.image!.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
            trophyImage.tintColor = UIColor(red: 255/255, green: 200/255, blue: 0/255, alpha: 1.0)
            trophyImage.layer.shadowOffset = CGSize(width: 1, height: 1)
            trophyImage.layer.shadowOpacity = 1
            trophyImage.layer.shadowRadius = 1
            trophyImage.isHidden = false
            recordLabel.isHidden = false
        } else {
            trophyImage.isHidden = true
            recordLabel.isHidden = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Hide status bar from this view
    override var prefersStatusBarHidden : Bool {
      return true
    }
  
    @IBAction func tapReceived(_ sender: AnyObject) {
        
    }
}
