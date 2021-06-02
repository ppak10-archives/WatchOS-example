//
//  CustomInterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Peter Pak on 6/1/21.
//

import WatchKit
import AVFoundation


class CustomInterfaceController: WKInterfaceController {
    let saveURL = FileManager.default.getDocumentsDirectory().appendingPathComponent("recording.wav")

    var audioPlayer: AVAudioPlayer?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func recordTapped() {
        presentAudioRecorderController(withOutputURL: saveURL, preset: .narrowBandSpeech) {
            success, error in
            if success {
                print("Saved Succcessfully")
            } else {
                print(error?.localizedDescription ?? "Unknown error")
            }
        }
    }
    
    @IBAction func playTapped() {
        guard FileManager.default.fileExists(atPath: saveURL.path) else { return }
        
        try? audioPlayer = AVAudioPlayer(contentsOf: saveURL)
        audioPlayer?.play()
    }
}
