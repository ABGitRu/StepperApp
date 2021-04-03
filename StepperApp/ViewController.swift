//
//  ViewController.swift
//  StepperApp
//
//  Created by Mac on 03.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var stepper: UIStepper!
    
    let fontName = "AmericanTypewriter"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.minimumValue = 8
        stepper.maximumValue = 40
        stepper.layer.cornerRadius = 5
        
        stepper.value = Double(helloLabel.font.pointSize)
    }

    @IBAction func stepperAction() {
        helloLabel.font = UIFont(name: fontName, size: CGFloat(stepper.value))
    }
    
}

