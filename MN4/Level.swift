//
//  Level.swift
//  MN4
//
//  Created by Pedro Rodrigues Grijó on 8/24/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.

/**
* To obtain a level, call setLevel and then getLevelWords
*/


import Foundation

class Level {
    
    private var dataBase: [Category]
    private var rightCategoryId: UInt32    // Category Id of the 3 correct words
    private var wrongCategoryId: UInt32    // Category Id of the incorrect word
    private var wrongWord: Word            // Incorrect word choice
    private var levelWords: [Word]         // Words of the current level

    init() {
        
        let langId = NSLocale.preferredLanguages()[0]
        print(langId)
        
        // Gets the dataBase
        if(langId == "pt-BR" || langId == "pt-PT") {
            self.dataBase = WordDataBase.getDataBase()
        } else if(langId == "es-BR" || langId == "es-ES" || langId == "es-419" || langId == "es-MX") {
            self.dataBase = WordDataBaseSpanish.getDataBase()
        } else {
            self.dataBase = WordDataBaseEnglish.getDataBase()
        }
        
        self.rightCategoryId = 0
        self.wrongCategoryId = 0
        self.wrongWord = Word(word: "", difficulty: "")
        self.levelWords = [Word]()
    }

// MARK: - Setters
    
    // Models a level
    func setLevel() {
        
        setCategoryIds()
        setLevelWords()
        randomizeLevelWords()
    }
    
    private func setCategoryIds() {
        
        // Randomly chooses the category Ids of the right and wrong words
        self.rightCategoryId = arc4random_uniform(UInt32(dataBase.count))
        self.wrongCategoryId = arc4random_uniform(UInt32(dataBase.count))
        // Loops until an acceptable wrong category Id is generated
        while wrongCategoryId == rightCategoryId {
            self.wrongCategoryId = arc4random_uniform(UInt32(dataBase.count))
        }
    }
    
    private func setLevelWords() {
        
        var wrongWordIndex: Int
        var rightWordIndexes: [Int] = [Int](count: 3, repeatedValue: 0)
        
        // Generates random indexes to get the words from the database
        wrongWordIndex = Int(arc4random_uniform(UInt32(dataBase[Int(wrongCategoryId)].words.count)))
        rightWordIndexes[0] = Int(arc4random_uniform(UInt32(dataBase[Int(rightCategoryId)].words.count)))
        rightWordIndexes[1] = Int(arc4random_uniform(UInt32(dataBase[Int(rightCategoryId)].words.count)))
        rightWordIndexes[2] = Int(arc4random_uniform(UInt32(dataBase[Int(rightCategoryId)].words.count)))
        
        // Checks for duplicates
        while rightWordIndexes[1] == rightWordIndexes[0] {
            rightWordIndexes[1] = Int(arc4random_uniform(UInt32(dataBase[Int(rightCategoryId)].words.count)))
        }
        
        while rightWordIndexes[2] == rightWordIndexes[1] || rightWordIndexes[2] == rightWordIndexes[0] {
            rightWordIndexes[2] = Int(arc4random_uniform(UInt32(dataBase[Int(rightCategoryId)].words.count)))
        }
        
        // Gets the words from the database and appends them into the levelWords array
        self.wrongWord = dataBase[Int(wrongCategoryId)].words[wrongWordIndex]
        self.levelWords.append(self.wrongWord)
        self.levelWords.append(dataBase[Int(rightCategoryId)].words[rightWordIndexes[0]])
        self.levelWords.append(dataBase[Int(rightCategoryId)].words[rightWordIndexes[1]])
        self.levelWords.append(dataBase[Int(rightCategoryId)].words[rightWordIndexes[2]])

    }

// MARK: - Getters
    
    func getCategoryIds()->[UInt32] {
        return [rightCategoryId, wrongCategoryId]
    }
    
    func getLevelWords()->[Word] {
        return levelWords
    }
    
    func getWrongWord()->Word {
        return wrongWord
    }

// MARK: - Other Methods

    // Fisher-Yates/Knuth Shuffle
    private func randomizeLevelWords() {
        
        let size: Int = self.levelWords.count
        
        for i in 0...(size - 1) {//(var i=0; i<size; i += 1) {
            let j = i + Int(arc4random_uniform(UInt32(size-i)))
            if(j<size && !(j==i)) {
                swap(&levelWords[i], &levelWords[j])
            }
        }
    }
    
//    func printLevelWords() {
//        println(self.levelWords)
//    }
}








