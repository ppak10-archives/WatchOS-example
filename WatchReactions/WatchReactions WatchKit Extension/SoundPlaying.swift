//
//  SoundPlaying.swift
//  WatchReactions WatchKit Extension
//
//  Created by Peter Pak on 6/1/21.
//

import AVFoundation

protocol SoundPlaying: AnyObject {
    var audioPlayer: AVAudioPlayer? { get set }
}

extension  SoundPlaying {
    func playSound(named name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "wav") else {
            fatalError("Unable to find sound file \(name).wav")
        }
        
        try? audioPlayer = AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
    }
}
