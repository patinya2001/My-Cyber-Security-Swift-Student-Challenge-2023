# Cyber Security (Swift Student Challenge 2023)

## Table of contents

 - [Background](#Background)
 - [How to install](#how-to-install) 
 - [How to use](#how-to-use)
 - [What makes Fred talk?](#what-makes-fred-talk)
 - [Note](#Note)
 
## Background

My application is an educational application about cyber security. The inspiration to make this application was due to the cybersecurity problem in my country, "Thailand." The problem has greatly increased in the past as more people have access to technology. Every day on the Internet, I hear news about cyberattacks; for example, money in bank accounts is stolen due to downloading pirated applications from websites that display propaganda and are attacked by malware. According to the cyberattack statistics in my country, the elderly are the number one most attacked group. Moreover, today's youth have access to technology differently than in the past, and it is rare for schools to teach cyberattack defense. Therefore, I created this application to educate the target group of teenagers and senior citizens. However, apart from the above two groups, other groups can also use this application to increase their knowledge of cyber defense. It is advantageous to be familiar with cybersecurity.

The main feature of the application is that I will have a situation where you have a chance of getting a cyberattack. I am going to give you choices, and you have to decide what to do in that situation. Whether you answer correctly or incorrectly, you will learn the characteristics of the situation and ways to avoid it.

I use SwiftUI to do the interface. I try to make it look as friendly as possible to my target audience. I've also used text-to-speech techniques, including AVSpeechUtterance() and AVSpeechSynthesizer() from AVFoundation. You will be able to hear a voice when you open the application or when you navigate through the pages within the application. What I do is for the elderly target group, allowing them to listen to the audio instead of reading, reducing the burden of reading such as blurry vision, eyestrain, etc.

## How to install

This project was developed through Swift Playground (.swiftpm) due to Apple requirements. </p>

1. Clone this project or download it as a ZIP file.  
2. In the project folder, open MyCyberSecurity.swiftpm via XCode.  
3. Run the application.  

## How to use

Our synthetic voice "Fred" will greet you on the splash screen when the application launches.

<img width="334" alt="1" src="https://github.com/patinya2001/Cyber-Security-Swift-Student-Challenge-2023/assets/149204731/162f15b9-9dd0-48d5-b28d-e6013e551f98">

<br><br>

Fred will provide an overview of the application. In summary, we have three cyber security questions for you to challenge.

You can tap the speaker symbol to have Fred talk about that topic.

<img width="337" alt="2" src="https://github.com/patinya2001/Cyber-Security-Swift-Student-Challenge-2023/assets/149204731/e4d58d63-bc0a-4547-b5ad-0ccf24ed44c6">

<br><br>

Every question gauges knowledge of cybersecurity. Therefore, you must select the appropriate option.

<img width="331" alt="3" src="https://github.com/patinya2001/Cyber-Security-Swift-Student-Challenge-2023/assets/149204731/fe23bb3b-7f93-4aa3-bf4b-cdf047cc9cb3">

<br><br>

If you read the answers carefully, it doesn't matter if your answer is correct or incorrect. You will, at least, be immune to these things.

<p>
<img width="334" alt="4" src="https://github.com/patinya2001/Cyber-Security-Swift-Student-Challenge-2023/assets/149204731/ddcd8269-7193-4989-bf01-b2fd5e60622d">
<img width="334" alt="5" src="https://github.com/patinya2001/Cyber-Security-Swift-Student-Challenge-2023/assets/149204731/65a10a3d-b55c-4997-b9f9-90f27d5f3332">
</p>

<br><br>

Thank you for your interest.

Hopefully this application will make you more or less aware of cyber security.

<img width="333" alt="6" src="https://github.com/patinya2001/Cyber-Security-Swift-Student-Challenge-2023/assets/149204731/77849140-8c5f-4e53-88b1-be5dcf5094d8">

## What makes Fred talk?

Answer: AVFoundation

AVFoundation is the full featured framework for working with time-based audiovisual media. [Source](https://developer.apple.com/av-foundation/)

```swift
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
```


## Note

The built-in voice identification in iOS 17.0–17.2 isn't working. As a result, Fred was used as the voice identity.
