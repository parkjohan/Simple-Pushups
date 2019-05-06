//
//  ChooseFormViewController.swift
//  Simple Pushup
//
//  Created by Johan Park on 4/4/19.
//  Copyright © 2019 Johan Park. All rights reserved.
//

import Foundation
import UIKit

class ChooseFormViewController: UIViewController {
    
    @IBOutlet var normalPushupButton: UIButton!
    @IBOutlet var diamondPushupButton: UIButton!
    @IBOutlet var widePushupButton: UIButton!
    @IBOutlet var declinePushupButton: UIButton!
    
    var videoURL = FormVideo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        normalPushupButton.layer.borderWidth = 0.5
        normalPushupButton.layer.cornerRadius = 10
        
        diamondPushupButton.layer.borderWidth = 0.5
        diamondPushupButton.layer.cornerRadius = 10
        
        widePushupButton.layer.borderWidth = 0.5
        widePushupButton.layer.cornerRadius = 10
        
        declinePushupButton.layer.borderWidth = 0.5
        declinePushupButton.layer.cornerRadius = 10
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NormalPushupSegue" {
            let normalVC = segue.destination as? PopupViewController
            normalVC?.formType = "Normal Pushup"
            normalVC?.videoType = videoURL.normalVideo
        }
        if segue.identifier == "DiamondPushupSegue" {
            let diamondVC = segue.destination as? PopupViewController
            diamondVC?.formType = "Diamond Pushup"
            diamondVC?.videoType = videoURL.diamondVideo
        }
        if segue.identifier == "WidePushupSegue" {
            let wideVC = segue.destination as? PopupViewController
            wideVC?.formType = "Wide Pushup"
            wideVC?.videoType = videoURL.wideVideo
        }
        if segue.identifier == "DeclinePushupSegue" {
            let declineVC = segue.destination as? PopupViewController
            declineVC?.formType = "Decline Pushup"
            declineVC?.videoType = videoURL.declineVideo
        }
    }
    
    @IBAction func cancel (_ unwindSegue: UIStoryboardSegue) {
    }
}
