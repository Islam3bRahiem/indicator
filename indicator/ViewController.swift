//
//  ViewController.swift
//  indicator
//
//  Created by iMac on 2/10/19.
//  Copyright © 2019 Indicator. All rights reserved.
//

import UIKit

class ViewController: UIViewController, IndicatorView {

    @IBOutlet weak var playBtn: UIButton!
    var isPlay = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startIndicator()
    }

    @IBAction func playBtnPressed(_ sender: Any) {
        if isPlay {
            self.stopIndicator()
            playBtn.setTitle("PLAY", for: .normal)
            self.isPlay = false
        } else {
            self.startIndicator()
            playBtn.setTitle("STOP", for: .normal)
            self.isPlay = true
        }
    }
    
}
