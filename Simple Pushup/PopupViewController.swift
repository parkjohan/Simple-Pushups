//
//  PopupViewController.swift
//  Simple Pushup
//
//  Created by Johan Park on 4/5/19.
//  Copyright © 2019 Johan Park. All rights reserved.
//

import UIKit
import YoutubePlayer_in_WKWebView

class PopupViewController: UIViewController {
    
    var formType = ""
    
    var videoURL = FormVideo()
    var videoType = ""

    @IBOutlet var formLabel: UILabel!
    @IBOutlet var videoPlayerView: WKYTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formLabel.text = formType
        videoPlayerView.load(withVideoId: "\(videoType)")
    }
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
