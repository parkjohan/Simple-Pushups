//
//  ChooseFormViewController.swift
//  Simple Pushup
//
//  Created by Johan Park on 4/4/19.
//  Copyright © 2019 Johan Park. All rights reserved.
//

import Foundation
import UIKit
import PopupDialog

class ChooseFormViewController: UIViewController {
    
    @IBOutlet var normalPushupButton: UIButton!
    @IBOutlet var diamondPushupButton: UIButton!
    @IBOutlet var widePushupButton: UIButton!
    @IBOutlet var declinePushupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        normalPushupButton.layer.borderWidth = 1
        normalPushupButton.layer.cornerRadius = 10
        diamondPushupButton.layer.borderWidth = 1
        diamondPushupButton.layer.cornerRadius = 10
        widePushupButton.layer.borderWidth = 1
        widePushupButton.layer.cornerRadius = 10
        declinePushupButton.layer.borderWidth = 1
        declinePushupButton.layer.cornerRadius = 10
        

    }
    
    @IBAction func normalPushupPressed(_ sender: Any) {
        performSegue(withIdentifier: "ChooseFormSegue", sender: self)
    }
    @IBAction func diamondPushupPressed(_ sender: Any) {
        performSegue(withIdentifier: "ChooseFormSegue", sender: self)
    }
    @IBAction func widePushupPressed(_ sender: Any) {
        performSegue(withIdentifier: "ChooseFormSegue", sender: self)
    }
    @IBAction func declinePushupPressed(_ sender: Any) {
        performSegue(withIdentifier: "ChooseFormSegue", sender: self)
    }
}
