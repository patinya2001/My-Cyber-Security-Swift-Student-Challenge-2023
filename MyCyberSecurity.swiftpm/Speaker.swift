//
//  Speaker.swift
//  MyCyberSecurity
//
//  Created by ปฏิญญา จารุอริยานนท์ on 3/6/2567 BE.
//

import Foundation
import AVFoundation

struct Speaker {
    let speaker = AVSpeechSynthesizer()
    
    func getSpeech(text: String) {
        let context = AVSpeechUtterance(string: text)
        context.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")
        context.rate = 0.55
        speaker.speak(context)
    }
}
