//
//  GuideListView.swift
//  MyCyberSecurity
//
//  Created by ปฏิญญา จารุอริยานนท์ on 19/4/2566 BE.
//

import SwiftUI
import AVFoundation

struct GuideListView: View {
    var title: String
    var description: String
    let speaker = Speaker()
    
    var body: some View {
        ZStack { // Open ZStack
            Color.init(red: 207/255, green: 255/255, blue: 229/255)
            VStack { // Open VStack
                HStack { // Open HStack
                    Text(title)
                        .font(.custom("Futura", size: 24))
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                    Spacer()
                    Button(action : { // Open Button
                        speaker.getSpeech(text: "\(title) " + " \(description)")
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
                Text(description)
                    .font(.custom("Futura", size: 20))
                    .frame(maxWidth: 350, maxHeight: .infinity)
                    .multilineTextAlignment(.leading)
            } // Close VStack
            .padding(.top, 30)
        } // Close ZStack
    }
}

struct GuideListView_Previews: PreviewProvider {
    static var previews: some View {
        GuideListView(title: "How to check spoof mail", description: "Look at...")
    }
}
