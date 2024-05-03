//
//  AnswerView.swift
//  MyCyberSecurity
//
//  Created by ปฏิญญา จารุอริยานนท์ on 19/4/2566 BE.
//

import SwiftUI

struct AnswerView: View {
    @Environment(\.dismiss) var dismiss
    var answerCheck: Int
    var title1: String
    var title2: String
    var description1: String
    var description2: String
    @State private var showResult: String = ""
    
    var body: some View {
        ZStack { // Open ZStack
            Color.init(red: 207/255, green: 255/255, blue: 229/255)
            VStack { // Open VStack1
                Text(showResult)
                    .font(.custom("Futura", size: 30))
                    .fontWeight(.bold)
                VStack { // Open VStack2
                    ScrollView(.vertical, showsIndicators: false) { // Open ScrollView
                        GuideListView(title: title1, description: description1)
                        GuideListView(title: title2, description: description2)
                    } // Close ScrollView
                } // Close VStack2
                    .font(.custom("Futura", size: 24))
                Button(action: {dismiss()}) { // Open Button1
                    Text("Back")
                        .font(.custom("Futura", size: 20))
                        .fontWeight(.bold)
                        .frame(width: 200, height: 50)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.bottom, 30)
                } // Close Button1
            } // Close VStack1
            .padding(.top, 100)
            .onAppear {
                if answerCheck == 0 {
                    self.showResult = "Correct!"
                }
                else {
                    self.showResult = "Wrong choice!"
                }
            }
        } // Close ZStack
        .edgesIgnoringSafeArea(.all)
    }
}

struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(answerCheck: 0, title1: "Spoof mail", title2: "How to check spoof mail", description1: "", description2: "1.Check \n 2.Ark friend")
    }
}
