//
//  SoundPlayer.swift
//  Devote
//
//  Created by IGE DAMILOLA MICHAEL on 15/02/2022.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let url = Bundle.main.url(forResource: sound, withExtension: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: url)
      audioPlayer?.play()
    } catch {
      print("Could not find and play the sound file.")
    }
  }
}

