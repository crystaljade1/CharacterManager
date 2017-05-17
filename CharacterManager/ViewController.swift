//
//  ViewController.swift
//  CharacterManager
//
//  Created by Crystal Jade Allen-Washington on 5/17/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    typealias Status = (characterStatus: Int, HealthLevel: Int)

    @IBOutlet var characterStatusLabel: UILabel!
    @IBOutlet var healthLevelLabel: UILabel!
    @IBOutlet var magicLevelLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    @IBAction func updateHealthByOne(_ sender: UIStepper) {
        
        let healthLevel = sender.value
        
        healthLevelLabel.text = String(sender.value)
        
        
        if healthLevel <= 15 && healthLevel > 0 {
            characterStatusLabel.text = "Danger"
        } else if healthLevel == 0 {
            characterStatusLabel.text = "Incapacitated"
        } else {
            characterStatusLabel.text = "Normal"
        }
    }
    
    @IBAction func updateHealthByTen(_ sender: UIStepper) {
        let healthLevel = sender.value
        
        healthLevelLabel.text = String(sender.value)
        
        
        if healthLevel <= 15 && healthLevel > 0 {
            characterStatusLabel.text = "Danger"
            magicLevelLabel.text = "20"
        } else if healthLevel == 0 {
            characterStatusLabel.text = "Incapacitated"
            magicLevelLabel.text = "0"
        } else {
            characterStatusLabel.text = "Normal"
            magicLevelLabel.text = "75"
        }
    }
    
}

