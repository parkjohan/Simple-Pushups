//
//  CountdownViewController.swift
//  Simple Pushup
//
//  Created by Johan Park on 4/4/19.
//  Copyright © 2019 Johan Park. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class CountdownViewController: UIViewController {
    
    @IBOutlet var countDownNumber: UIButton!
    @IBOutlet var touchToStartButton: UIButton!
    @IBOutlet var completedLabel: UILabel!
    @IBOutlet var restartButton: UIButton!
    @IBOutlet var mainMenuButton: UIButton!
    
    var countdown = 0
    var countdownSound: AVAudioPlayer?
    
    //let path = Bundle.main.path(forResource: "example.mp3", ofType:nil)!
    //let url = URL(fileURLWithPath: path)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func touchToStartTapped(_ sender: Any) {
        touchToStartButton.isHidden = true
        countDownNumber.isHidden = false
        countDownNumber.setTitle("\(countdown - 1)", for: .normal)
    }
    @IBAction func countDownNumberTapped(_ sender: Any) {
        countDownNumber.setTitle("\(countdown - 2)", for: .normal)
        countdown -= 1
//        do {
//            bombSoundEffect = try AVAudioPlayer(contentsOf: url)
//            bombSoundEffect?.play()
//        } catch {
//            print("Couldn't play sound :(")
//        }
        if countdown == 1 {
            print("Congrats, you completed your set")
            countDownNumber.isHidden = true
            completedLabel.isHidden = false
            restartButton.isHidden = false
            mainMenuButton.isHidden = false
        }
    }
    @IBAction func restartButtonTapped(_ sender: Any) {
        
    }
    @IBAction func mainMenuButtonTapped(_ sender: Any) {
        
    }
}
