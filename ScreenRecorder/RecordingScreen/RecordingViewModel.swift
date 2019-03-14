//
//  RecordingViewModel.swift
//  ScreenRecorder
//
//  Created by Bablu Joshi on 13/03/19.
//  Copyright © 2019 Bablu Joshi. All rights reserved.
//

import UIKit
import ReplayKit
class RecordingViewModel {
    
    let recorder = RPScreenRecorder.shared()
    private var isRecording = false
    
    
    func userAction(button :UIButton){
        if !isRecording {
            startRecording(btn: button)
        } else {
            stopRecording(btn: button)
        }
    }
    
    func startRecording(btn:UIButton){
        btn.setTitle("Recording...", for: .normal)
        recorder.startRecording{ [unowned self] (error) in
    
            guard error == nil else {
                print("Error")
                return
            }
            print("Started Recording ...")
            self.isRecording = true
        }
        
    }
    
    func stopRecording(btn:UIButton){
        btn.setTitle("Start Recording", for: .normal)

        recorder.stopRecording { [unowned self] (preview, error) in
            print("Stopped recording")
            self.isRecording = false

        }
        
    }
}
