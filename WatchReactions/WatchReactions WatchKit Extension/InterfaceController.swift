//
//  InterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Peter Pak on 6/1/21.
//

import WatchKit
import AVFoundation


class InterfaceController: WKInterfaceController, SoundPlaying {
    var audioPlayer: AVAudioPlayer?

    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

    @IBAction func playSound1() {
        playSound(named: "Toggle Click")
    }
    
    @IBAction func playSound2() {
        playSound(named: "Teleport Spell")
    }
    
    @IBAction func playSound3() {
        playSound(named: "Bury bones")
    }
    
    @IBAction func playSound4() {
        playSound(named: "Shoo away stray dog")
    }
}
