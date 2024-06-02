import SwiftUI
import AVFoundation

struct HomeView: View {
    @State private var path: [Int] = []
    let speaker = Speaker()
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack { // Open NavigationView
                ZStack { // Open ZStack
                    Color.init(red: 207/255, green: 255/255, blue: 229/255)
                    VStack { // Open VStack1
                        Text("Welcome to")
                            .padding(.top, 40)
                            .font(.custom("Futura", size: 24))
                            .fontWeight(.bold)
                        Text("Cyber Security Challenge!")
                            .padding(.bottom, 20)
                            .font(.custom("Futura", size: 24))
                            .fontWeight(.bold)
                        Text("I have 3 questions about cyber security. \n Try to answer them!")
                            .font(.custom("Futura", size: 24))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        VStack { // Open VStack2
                            NavigationLink(destination: GameView(systemImageName: "envelope.fill.badge.shield.trailinghalf.fill", topic: "Spoof Mail")) {
                                TopicListView(systemImageName: "envelope.fill.badge.shield.trailinghalf.fill", topic: "Spoof Mail")}
                            NavigationLink(destination: GameView(systemImageName: "exclamationmark.shield.fill", topic: "Pop-up ADS")) {
                                TopicListView(systemImageName:("exclamationmark.shield.fill"), topic: "Pop-up ADS")}
                            NavigationLink(destination: GameView(systemImageName: "desktopcomputer.trianglebadge.exclamationmark", topic: "Fake Site")) {
                                TopicListView(systemImageName: "desktopcomputer.trianglebadge.exclamationmark", topic: "Fake Site")}
                        } // Close VStack2
                        .foregroundColor(.black)
                        .padding(.top, 30)
                        Spacer()
                        NavigationLink(destination: AboutView()) { // Open NavigationLink
                            Text("About Me")
                                .font(.custom("Futura", size: 24))
                                .fontWeight(.bold)
                                .frame(width: 200, height: 50)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [
                                        Color.init(red: 13/255, green: 9/255, blue: 121/255),
                                        Color.init(red: 0/255, green: 0/255, blue: 255/255)]),
                                                   startPoint: .leading, endPoint: .trailing)
                                )
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .padding(.bottom, 60)
                        } // Close NavigationLink
                    } // Close VStack1
                    .onAppear {
                        speaker.getSpeech(text: "Welcome to Cyber Security Challenge! I have 3 questions about cyber security. \n Try to answer them!")
                    }
                } // Close ZStack
                .navigationBarTitleDisplayMode(.inline)
                .toolbar { // Open toolbar
                    ToolbarItem(placement: .principal) { // Open ToolbarItem
                        HStack { // Open HStack
                            Image(systemName: "network.badge.shield.half.filled")
                                .font(.system(size: 24))
                            Text("Cyber Security")
                                .font(.custom("Futura", size: 24))
                                .fontWeight(.bold)
                        } // Close HStack
                    } // Close ToolbarItem
                } // Close toolbar
                .edgesIgnoringSafeArea(.bottom)
            }
        } else {
            // Fallback on earlier versions
        } // Close NavigationView
    }
}
