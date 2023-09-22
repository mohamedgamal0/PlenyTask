//
//  ImageGridUITests.swift
//  PlenyTaskUITests
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import XCTest
import SwiftUI
@testable import PlenyTask

class ImageGridUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        app.launch()
    }

    func testImageGridWithThreeImages() {
        let image1 = app.images["ImageGrid_image1"]
        let image2 = app.images["ImageGrid_image2"]
        let image3 = app.images["ImageGrid_image3"]
        
        XCTAssertTrue(image1.exists)
        XCTAssertTrue(image2.exists)
        XCTAssertTrue(image3.exists)
    }
    
    func testImageGridWithOneImage() {
        let image = app.images["ImageGrid_image4"]
        
        XCTAssertTrue(image.exists)
    }
}
