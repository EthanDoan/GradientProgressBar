//
//  GradientProgressBarTestCase.swift
//  GradientProgressBar_Example
//
//  Created by Felix Mau on 30.10.17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

@testable import GradientProgressBar
import XCTest

class GradientProgressBarTestCase: XCTestCase {
    func testInitialization() {
        let gradientProgressBar = GradientProgressBar(frame: .zero)

        guard
            let firstSubLayer = gradientProgressBar.layer.sublayers?.first,
            let gradientLayer = firstSubLayer as? CAGradientLayer
        else {
            XCTFail("The gradient layer should be added as first sublayer.")
            return
        }

        XCTAssertNotNil(gradientLayer.mask, "The gradient layer should contain a mask layer.")
    }
}
