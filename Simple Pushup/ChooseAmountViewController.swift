//
//  ChooseAmountViewController.swift
//  Simple Pushup
//
//  Created by Johan Park on 4/4/19.
//  Copyright © 2019 Johan Park. All rights reserved.
//

import Foundation
import UIKit

class ChooseAmountViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "twentyFiveSegue" {
            let countdownVC = segue.destination as? CountdownViewController
            countdownVC?.countdown = 25
        }
        if segue.identifier == "fiftySegue" {
            let countdownVC = segue.destination as? CountdownViewController
            countdownVC?.countdown = 50
        }
        if segue.identifier == "seventyFiveSegue" {
            let countdownVC = segue.destination as? CountdownViewController
            countdownVC?.countdown = 75
        }
        if segue.identifier == "oneHundredSegue" {
            let countdownVC = segue.destination as? CountdownViewController
            countdownVC?.countdown = 100
        }
    }

}
