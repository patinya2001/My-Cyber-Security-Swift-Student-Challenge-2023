//
//  AboutView.swift
//  MyCyberSecurity
//
//  Created by ปฏิญญา จารุอริยานนท์ on 19/4/2566 BE.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack { // Open ZStack
            Color.init(red: 207/255, green: 255/255, blue: 229/255)
            VStack {
                Image("MyPhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .padding(.top, 60)
                Text("Patinya Jaruariyanon")
                    .font(.custom("Futura", size: 26))
                    .fontWeight(.bold)
                    .padding(.top, 10)
                Text("Chulalongkorn University")
                    .font(.custom("Futura", size: 26))
                    .fontWeight(.bold)
                    .padding(.top, 5)
                Text("Department of Statistics")
                    .font(.custom("Futura", size: 26))
                    .fontWeight(.bold)
                    .padding(.top, 5)
                Text("\"I made this app to educate people about cybersecurity so that no one falls victim to a miscreant.\"")
                    .font(.custom("Futura", size: 26))
                    .frame(maxWidth: 350, maxHeight: .infinity)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // Open toolbar
                ToolbarItem(placement: .principal) { // Open ToolbarItem
                    HStack { // Open HStack
                        Image(systemName: "person.fill")
                            .font(.system(size: 24))
                        Text("About Me")
                            .font(.custom("Futura", size: 24))
                            .fontWeight(.bold)
                    } // Close HStack
                } // Close ToolbarItem
            } // Close toolbar
        } // Close ZStack
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
