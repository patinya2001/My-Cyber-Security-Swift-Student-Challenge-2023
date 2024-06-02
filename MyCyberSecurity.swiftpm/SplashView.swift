//
//  SplashView.swift
//  MyCyberSecurity
//
//  Created by ปฏิญญา จารุอริยานนท์ on 19/4/2566 BE.
//

import SwiftUI
import AVFoundation

struct SplashView: View {
    @State private var isActive = false
    let speaker = Speaker()
    
    var body: some View {
        if isActive {
            HomeView()
        }
        else {
            ZStack { // Open ZStack
                Color.init(red: 207/255, green: 255/255, blue: 229/255)
                VStack { // Open VStack
                    Image(systemName: "network.badge.shield.half.filled")
                        .font(.system(size: 150))
                    Text("Cyber Security")
                        .font(.custom("Futura", size: 30))
                        .fontWeight(.bold)
                    Text("Challenge")
                        .font(.custom("Futura", size: 30))
                        .fontWeight(.bold)
                    Text("Are you ready?")
                        .font(.custom("Futura", size: 24))
                        .fontWeight(.bold)
                        .padding(.top, 1)
                } // Close VStack
                .onAppear { // Open onAppear
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                        self.isActive = true
                    }
                    speaker.getSpeech(text: "Cyber Security Challenge. Are you ready?")
                } // Close onAppear
            } // Close ZStack
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
