//
//  PopupViewController.swift
//  Simple Pushup
//
//  Created by Johan Park on 4/5/19.
//  Copyright © 2019 Johan Park. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {
    
    var formType = ""

    @IBOutlet var formLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
