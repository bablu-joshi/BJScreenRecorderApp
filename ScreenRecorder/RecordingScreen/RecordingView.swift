//
//  RecordingView.swift
//  ScreenRecorder
//
//  Created by Bablu Joshi on 13/03/19.
//  Copyright © 2019 Bablu Joshi. All rights reserved.
//

import UIKit
import ReplayKit
class RecordingView: UIViewController {
 let model = RecordingViewModel()
    
    @IBAction func userAction(_ sender: UIButton) {
        model.userAction(button: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
