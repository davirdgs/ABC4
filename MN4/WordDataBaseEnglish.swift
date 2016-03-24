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
            Category(categoryId: 0, categoryName: "animals", words: [
                Word(word: "Abelha", difficulty: "Easy"),
                Word(word: "Águia", difficulty: "Easy")]
        )]
    }

    static func getDataBase()->[Category] {
        return self.dataBase
    }
}
