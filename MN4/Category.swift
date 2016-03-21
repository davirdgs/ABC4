//
//  Category.swift
//  MN4
//
//  Created by Pedro Rodrigues Grijó on 8/20/15.
//  Copyright (c) 2015 Pedro Rodrigues Grijó. All rights reserved.
//

import Foundation

class Category{
    
    var categoryId: Int
    var categoryName: String
    var words: [Word]
    
    init(categoryId: Int, categoryName: String, words: [Word]){
        
        self.categoryId = categoryId
        self.categoryName = categoryName
        self.words = words
    }
    
}