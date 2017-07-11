//
//  ABC4UITests.swift
//  ABC4UITests
//
//  Created by Davi Rodrigues on 11/07/17.
//  Copyright © 2017 Pedro Rodrigues Grijó. All rights reserved.
//

import XCTest

class ABC4UITests: XCTestCase {
    
    func testExample() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        snapshot("TelaInicial")
    }
    
}
