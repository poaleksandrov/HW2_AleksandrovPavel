//
//  ViewController.swift
//  HW2_AleksandrovPavel
//
//  Created by Павел Александров on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentColor = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.alpha = 0.3
        redColor.layer.cornerRadius = 50
        
        yellowColor.alpha = 0.3
        yellowColor.layer.cornerRadius = 50
        
        greenColor.alpha = 0.3
        yellowColor.layer.cornerRadius = 50
        
        startButton.layer.cornerRadius = 15
    }

    @IBAction func buttonDidTap() {
    
        if startButton.title(for: .normal) == "START" {
            redColor.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
            currentColor = "red"
            return
        }
        
        switch currentColor {
        case "red":
            redColor.alpha = 0.3
            yellowColor.alpha = 1
            currentColor = "yellow"
        case "yellow":
            yellowColor.alpha = 0.3
            greenColor.alpha = 1
            currentColor = "green"
        case "green":
            greenColor.alpha = 0.3
            redColor.alpha = 1
            currentColor = "red"
        default: break
        }
    }
}

