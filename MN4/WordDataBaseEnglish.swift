//
//  WordDataBaseEnglish.swift
//  ABC4
//
//  Created by Davi Rodrigues on 24/03/16.
//  Copyright © 2016 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class WordDataBaseEnglish {
    
    private static var dataBase: [Category] = [Category]()
    
    static func setDataBase() {
        self.dataBase = [
            Category(categoryId: 0, categoryName: "animals", words: [
            Word(word: "Abelha", difficulty: "Easy"),
                Word(word: "Águia", difficulty: "Easy")]
            ),
            Category(categoryId: 2, categoryName: "adverbs", words: [
                Word(word: "Abelha", difficulty: "Easy"),
                Word(word: "Águia", difficulty: "Easy")]
        ),
            Category(categoryId: 9, categoryName: "martial arts", words: [
                Word(word: "Aikido", difficulty: "Easy"),
                Word(word: "Boxing", difficulty: "Easy"),
                Word(word: "Capoeira", difficulty: "Easy"),
                Word(word: "Fencing", difficulty: "Easy"),
                Word(word: "Jiu-Jitsu", difficulty: "Easy"),
                Word(word: "Judo", difficulty: "Easy"),
                Word(word: "Karate", difficulty: "Easy"),
                Word(word: "Kickboxing", difficulty: "Easy"),
                Word(word: "Krav Maga", difficulty: "Easy"),
                Word(word: "Kung Fu", difficulty: "Easy"),
                Word(word: "Muay Thai", difficulty: "Easy"),
                Word(word: "Ninjutsu", difficulty: "Easy"),
                Word(word: "Sambo", difficulty: "Easy"),
                Word(word: "Savate", difficulty: "Easy"),
                Word(word: "Taekwondo", difficulty: "Easy"),
                Word(word: "Wrestling", difficulty: "Easy")
                ]
            )]
    }

    static func getDataBase()->[Category] {
        return self.dataBase
    }
}
