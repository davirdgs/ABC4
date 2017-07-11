//
//  GameViewController.swift
//  MN4
//
//  Created by Davi Rodrigues on 20/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit
import AudioToolbox

class GameViewController: UIViewController {

    var level: Level = Level()
    var wrongWord: Word = Word(word: "", difficulty: "")
    var levelWords: [Word] = [Word]()
    var seconds = 10
    var timer:Timer!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var heart1: UIImageView!
    @IBOutlet weak var heart2: UIImageView!
    @IBOutlet weak var heart3: UIImageView!
    
    @IBOutlet weak var countdown: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        PlayerStatus.initGame()
        
        scoreLabel.text = PlayerStatus.getScoreString()
        
        //Set background image/color
        //self.view.backgroundColor = Styles.getTexture()
        //self.view.backgroundColor = UIColor(red: 58/255, green: 135/255, blue: 185/255, alpha: 1.0)
        //self.view.backgroundColor = UIColor(red: 76/255, green: 70/255, blue: 127/255, alpha: 1.0)
        
        self.view.backgroundColor = Styles.backgroundColor
        
        option1.layer.cornerRadius = option1.frame.height/4
        option1.layer.masksToBounds = true
        option2.layer.cornerRadius = option1.frame.height/4
        option2.layer.masksToBounds = true
        option3.layer.cornerRadius = option1.frame.height/4
        option3.layer.masksToBounds = true
        option4.layer.cornerRadius = option1.frame.height/4
        option4.layer.masksToBounds = true
      
        //Set Hearts
        heart1.image = heart1.image!.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        heart1.tintColor = Styles.heartColor
        heart2.image = heart1.image!.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        heart2.tintColor = Styles.heartColor
        heart3.image = heart1.image!.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        heart3.tintColor = Styles.heartColor
      
        
        //Buttons border
        option1.layer.borderWidth = 0
        //option1.layer.borderColor = UIColor.blackColor().CGColor
        option2.layer.borderWidth = 0
        //option2.layer.borderColor = UIColor.blackColor().CGColor
        option3.layer.borderWidth = 0
        //option3.layer.borderColor = UIColor.blackColor().CGColor
        option4.layer.borderWidth = 0
        //option4.layer.borderColor = UIColor.blackColor().CGColor
        
        
        //Set font style
        scoreLabel.font = Styles.getFont()
        option1.titleLabel!.font = Styles.getFont()
        option2.titleLabel!.font = Styles.getFont()
        option3.titleLabel!.font = Styles.getFont()
        option4.titleLabel!.font = Styles.getFont()
        
        //Setting the countdown
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(GameViewController.subtractTime), userInfo: nil, repeats: true)
 
        setNewLevel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    // Hide status bar from this view
    override var prefersStatusBarHidden : Bool {
      return true
    }
  
    func updateHearts() {
        
        switch(PlayerStatus.getLifes()) {
        case 0:
            heart1.tintColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
            heart2.tintColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
            heart3.tintColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
            break
        case 1:
            heart2.tintColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
            heart3.tintColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
            break
        case 2:
            heart3.tintColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
            break
        default:
            break
        }
    }

    @IBAction func buttonHandler1(_ sender: AnyObject) {

        if option1.titleLabel?.text != self.wrongWord.word {
            playerMissed()
        } else {
            playerHit()
        }
        scoreLabel.text = PlayerStatus.getScoreString()
        setNewLevel()
    }

    @IBAction func buttonHandler2(_ sender: AnyObject) {

        if option2.titleLabel?.text != self.wrongWord.word {
            playerMissed()
        } else {
            playerHit()
        }
        scoreLabel.text = PlayerStatus.getScoreString()
        setNewLevel()
    }
    
    @IBAction func buttonHandler3(_ sender: AnyObject) {

        if option3.titleLabel?.text != self.wrongWord.word {
            playerMissed()
        } else {
            playerHit()
        }
        scoreLabel.text = PlayerStatus.getScoreString()
        setNewLevel()
    }
    
    @IBAction func buttonHandler4(_ sender: AnyObject) {

        if option4.titleLabel?.text != self.wrongWord.word {
            playerMissed()
        } else {
            playerHit()
        }
        scoreLabel.text = PlayerStatus.getScoreString()
        setNewLevel()
    }

    //Set level and get words
    func setNewLevel(){
        
        level = Level()
        level.setLevel()
        self.wrongWord = level.getWrongWord()
        self.levelWords = level.getLevelWords()
        
        scoreLabel.text = PlayerStatus.getScoreString()
        
        updateHearts()
        
        //Prepare buttons
        option1.setTitle(self.levelWords[0].word, for: UIControlState())
        option1.titleLabel?.numberOfLines = 1
        option1.titleLabel?.adjustsFontSizeToFitWidth  = true
        option1.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
        option1.titleLabel?.textAlignment = NSTextAlignment.center
        option2.setTitle(self.levelWords[1].word, for: UIControlState())
        option2.titleLabel?.numberOfLines = 1
        option2.titleLabel?.adjustsFontSizeToFitWidth  = true
        option2.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
        option2.titleLabel?.textAlignment = NSTextAlignment.center
        option3.setTitle(self.levelWords[2].word, for: UIControlState())
        option3.titleLabel?.numberOfLines = 1
        option3.titleLabel?.adjustsFontSizeToFitWidth  = true
        option3.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
        option3.titleLabel?.textAlignment = NSTextAlignment.center
        option4.setTitle(self.levelWords[3].word, for: UIControlState())
        option4.titleLabel?.numberOfLines = 1
        option4.titleLabel?.adjustsFontSizeToFitWidth  = true
        option4.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping
        option4.titleLabel?.textAlignment = NSTextAlignment.center

    }

    func subtractTime() {
        
        seconds -= 1
        countdown.text = "\(seconds)"
        if seconds == 0{
            playerMissed()
        }
    }
    
    func playerMissed() {
        
        PlayerStatus.lostLife()
        updateHearts()
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        if PlayerStatus.lifes < 0 {
            timer.invalidate()
            performSegue(withIdentifier: "toGameOverViewController", sender: self)
        } else {
            setNewLevel()
        }
        seconds = 11
    }
    
    func playerHit() {
        
        if PlayerStatus.getScore() < 15 {
            seconds += 4
        }
        else if PlayerStatus.getScore() >= 15 && PlayerStatus.getScore() < 30{
            seconds += 3
        }
        else if PlayerStatus.getScore() >= 30 {
            seconds += 2
        }
        
        PlayerStatus.scorePlus()
        setNewLevel()
    }
}





