//
//  BasicExampleViewController.swift
//  GradientProgressBar_Example
//
//  Created by Felix Mau on 09/30/17.
//  Copyright © 2017 Felix Mau. All rights reserved.
//

import UIKit
import GradientProgressBar

class BasicExampleViewController: UIViewController {
    // MARK: - Config

    /// Value that the progress bar is increased by on each tap on button.
    static let increaseValue: Float = 0.1

    // MARK: - Outlets

    @IBOutlet private var gradientProgressBar: GradientProgressBar!

    // MARK: - Public methods

    @IBAction func onAnimateButtonTouchUpInside(_: Any) {
        let currentProgress = gradientProgressBar.progress
        let updatedProgress = currentProgress + BasicExampleViewController.increaseValue

        gradientProgressBar.setProgress(updatedProgress, animated: true)
    }

    @IBAction func onSetProgressButtonTouchUpInside(_: Any) {
        let currentProgress = gradientProgressBar.progress
        let updatedProgress = currentProgress + BasicExampleViewController.increaseValue

        gradientProgressBar.progress = updatedProgress
    }

    @IBAction func onResetButtonTouchUpInside(_: Any) {
        gradientProgressBar.progress = 0.0
    }
}
