//
//  GameView.swift
//  MyCyberSecurity
//
//  Created by ปฏิญญา จารุอริยานนท์ on 19/4/2566 BE.
//

import SwiftUI
import AVFoundation

struct GameView: View {
    @State private var showAnswerView1 = false
    @State private var showAnswerView2 = false
    var systemImageName: String
    var topic: String
    @State private var fullText: String = ""
    @State private var title: String = ""
    @State private var imageName: String = ""
    @State private var description: String = ""
    @State private var answerTitle1: String = ""
    @State private var answerTitle2: String = ""
    @State private var answerDescription1: String = ""
    @State private var answerDescription2: String = ""
    @State private var choice1: String = ""
    @State private var choice2: String = ""
    
    let speaker = Speaker()
    
    var body: some View {
        ZStack { // Open ZStack
            Color.init(red: 207/255, green: 255/255, blue: 229/255)
            VStack { // Open VStack
                HStack { // Open HStack
                    Text(title)
                        .font(.custom("Futura", size: 24))
                    Button(action : { // Open Button
                        speaker.getSpeech(text: fullText)
                    }) {
                        Image(systemName: "speaker.wave.3.fill")
                    } // Close Button
                    .font(.system(size: 26))
                    .foregroundColor(.black)
                    .padding(.trailing, 20)
                } // Close HStack
                .padding(.top, 40)
                Text(description)
                    .font(.custom("Futura", size: 20))
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                Button(action: {self.showAnswerView1.toggle()}) {
                    Text(choice1)
                        .font(.custom("Futura", size: 20))
                        .fontWeight(.bold)
                        .frame(width: 270, height: 60)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top, 20)
                }
                .fullScreenCover(isPresented: $showAnswerView1) {
                    AnswerView(answerCheck: 0, title1: answerTitle1, title2: answerTitle2, description1: answerDescription1, description2: answerDescription2)
                }
                Button(action: {self.showAnswerView2.toggle()}) {
                    Text(choice2)
                        .font(.custom("Futura", size: 20))
                        .fontWeight(.bold)
                        .frame(width: 270, height: 60)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top, 10)
                }
                .fullScreenCover(isPresented: $showAnswerView2) {
                    AnswerView(answerCheck: 1, title1: answerTitle1, title2: answerTitle2, description1: answerDescription1, description2: answerDescription2)
                }
                Spacer()
            } // Close VStack
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // Open toolbar
                ToolbarItem(placement: .principal) { // Open ToolbarItem
                    HStack { // Open HStack
                        Image(systemName: systemImageName)
                            .font(.system(size: 24))
                        Text(topic)
                            .font(.custom("Futura", size: 24))
                            .fontWeight(.bold)
                    } // Close HStack
                } // Close ToolbarItem
            } // Close toolbar
            .onAppear {
                if self.topic == "Spoof Mail" {
                    self.title = "You got mail!"
                    self.description = "You received a mail written on behalf of your friend. The content contains links to sites you don't know. What will you do with this mail?"
                    self.answerTitle1 = "Spoof mail"
                    self.answerTitle2 = "How to check spoof mail"
                    self.answerDescription1 = "A spoof email is one that looks to be sent from a reputable source but is really sent by someone posing as someone else. Miscreant can send mail through third-party email service."
                    self.answerDescription2 = "1.Check if there is a spam notification. \n 2.If possible, contact the person identified as the email sender directly."
                    self.choice1 = "Don't believe this mail."
                    self.choice2 = "Press link"
                    self.fullText = "\(title) " + "\(description) " + "\(choice1) " + "or " + "\(choice2)"
                }
                else if self.topic == "Pop-up ADS" {
                    self.title = "You won a big prize!"
                    self.description = "You are currently using a website, but at that moment, a pop-up appears with the message \"You won a big prize!\", what do you do with this pop-up?"
                    self.answerTitle1 = "Untrustworthy pop-up ads"
                    self.answerTitle2 = "How to avoid pop-up ads"
                    self.answerDescription1 = "Untrustworthy pop-up ads are online adverts that appear unexpectedly in a new browser window or tab, typically without the user's agreement or knowledge. These pop-up ads are regarded as untrustworthy since they might be deceptive, misleading, or malevolent in character."
                    self.answerDescription2 = "1.Immediately close the displayed ads window or tab. \n 2.Make sure there is no ads tab left."
                    self.choice1 = "Reject"
                    self.choice2 = "Accept"
                    self.fullText = "\(title) " + "\(description) " + "\(choice1) " + "or " + "\(choice2)"
                }
                else if self.topic == "Fake Site" {
                    self.title = "Weird site!"
                    self.description = "You came to a website through an untrusted source and were about to log in, but at that moment, you see the website name ends with \".xyz\" instead of \".com\". What do you do with this website?"
                    self.answerTitle1 = "Fake site"
                    self.answerTitle2 = "How to avoid fake site"
                    self.answerDescription1 = "A fake site is one that is intended to trick people into thinking it is a reputable or trustworthy site when it is not. Fake websites can be built for a variety of reasons, including phishing schemes, virus distribution, or online fraud."
                    self.answerDescription2 = "Checking the name of the site might involve copying the url and pasting it somewhere else, such as the Google search box, to prevent the use of an image or code for the site name."
                    self.choice1 = "Close that website"
                    self.choice2 = "Log in"
                    self.fullText = "\(title) " + "\(description) " + "\(choice1) " + "or " + "\(choice2)"
                }
                speaker.getSpeech(text: fullText)
            }
        } // Close ZStack
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(systemImageName: "mail", topic: "Spoof Mail")
    }
}
