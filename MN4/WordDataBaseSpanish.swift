//
//  WordDataBaseSpanish.swift
//  ABC4
//
//  Created by Davi Rodrigues on 24/03/16.
//  Copyright © 2016 Pedro Rodrigues Grijó. All rights reserved.
//

import UIKit

class WordDataBaseSpanish: NSObject {

    private static var dataBase: [Category] = [Category]()
    
    static func setDataBase() {
        self.dataBase = [
            Category(categoryId: 0, categoryName: "animals", words: [
                
                ]),
            
            Category(categoryId: 1, categoryName: "fruits", words: [
                
                ]),
            
            Category(categoryId: 2, categoryName: "adverbs", words: [
                ]),
            
            Category(categoryId: 3, categoryName: "collectives", words: [
                ]),
            
            Category(categoryId: 4, categoryName: "adjectives", words: [
                ]),
            
            Category(categoryId: 5, categoryName: "coins", words: [
                
                ]),
            
            Category(categoryId: 6, categoryName: "clothes", words: [
                
                ]),
            
            Category(categoryId: 7, categoryName: "home appliances", words: [
                
                ]),
            
            Category(categoryId: 8, categoryName: "countries", words: [
                
                ]),
            
            Category(categoryId: 9, categoryName: "martial arts", words: [

                ]),
            
            Category(categoryId: 10, categoryName: "countries", words: [
                
                ]),
            Category(categoryId: 11, categoryName: "countries", words: [
                
                ]),
            Category(categoryId: 12, categoryName: "countries", words: [
                
                ]),
            Category(categoryId: 13, categoryName: "countries", words: [
                
                ]),
            Category(categoryId: 14, categoryName: "countries", words: [
                
                ]),
            Category(categoryId: 15, categoryName: "countries", words: [
                
                ]),
            Category(categoryId: 16, categoryName: "countries", words: [
                
                ])
            
        ]

    }
    
    static func getDataBase()->[Category] {
        return self.dataBase
    }
    
}
