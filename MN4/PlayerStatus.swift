//
//  PlayerStatus.swift
//  MN4
//
//  Created by Davi Rodrigues on 24/08/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class PlayerStatus {
   
    static var lifes: Int = 0
    static var score: Int = 0
    static let defauts = NSUserDefaults.standardUserDefaults()
    
    static func initGame() {
        self.lifes = 3
        self.score = 0
    }
    
    static func getLifes() -> Int {
        return self.lifes
    }
    
    static func getScore() -> Int {
        return self.score
    }
    
    static func getScoreString() -> String {
        return NSString(format: "%03d", score) as String
    }
    
    static func getLifesString () -> String {
        return String(lifes)
    }
    
    static func lostLife() {
        self.lifes -= 1
    }
    
    static func gainLife() {
        self.lifes += 1
    }
    
    static func scorePlus() {
        self.score += 1
    }
    
    static func saveRecord() {
        defauts.setInteger(self.score, forKey: "Record")
    }
    
    static func getRecord() -> Int {
        return defauts.integerForKey("Record")
    }
    
}
