//
//  GameListView.swift
//  MyCyberSecurity
//
//  Created by ปฏิญญา จารุอริยานนท์ on 19/4/2566 BE.
//

import SwiftUI
import AVFoundation

struct TopicListView: View {
    var systemImageName: String
    var topic: String
    let speaker = Speaker()
    
    var body: some View {
        HStack { // Open HStack
            Image(systemName: systemImageName)
                .font(.system(size: 30))
                .padding(.leading, 20)
            Text(topic)
                .font(.custom("Futura", size: 24))
            Spacer()
            Button(action : { // Open Button
                speaker.getSpeech(text: topic)
            }) {
                Image(systemName: "speaker.wave.3.fill")
            } // Close Button
            .font(.system(size: 26))
            .foregroundColor(.black)
            .padding(.trailing, 20)
        } // Close HStack
        .frame(width: 350, height: 100)
        .background(.white)
        .border(.black, width: 6)
        .cornerRadius(15)
        .padding(.bottom, 10)
    }
}

struct TopicListView_Previews: PreviewProvider {
    static var previews: some View {
        TopicListView(systemImageName: "mail", topic: "Spoof Email")
    }
}
