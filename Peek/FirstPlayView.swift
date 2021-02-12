//
//  FirstPlayView.swift
//  Peek
//
//  Created by Quentin Durand on 04/02/2021.
//

import SwiftUI
import AVKit

struct FirstPlayView: View {
    
    @State private var timeInterval = getTimeInterval()
    
    var body: some View {
        VStack {
            HStack {
                if timeInterval > 0 {
                    BlurView(myMusic: FIRST_TEST_MUSIC, timeInterval: $timeInterval)
                } else {
                    PlayView(myMusic: FIRST_TEST_MUSIC)
                }
            }
            Button(action: {
                withAnimation{
                    timeInterval = 0
                }
                
            }, label: {
                Text("Time 0")
            })
            Button(action: {
                timeInterval = 10
            }, label: {
                Text("Time 10")
            })
        }
    }
}


struct FirstPlayView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPlayView()
    }
}



struct PlayView: View {
    
    var myMusic: Music
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying: Bool = false
    @State private var pausePlay: String = "play.fill"
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State private var currentTime: TimeInterval = 0.0
    
    
    var body: some View {
        ZStack {
            VStack {
                Image(myMusic.cover)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    
                Text("\(myMusic.artist) - \(myMusic.titleName)")
                    .font(.title)
                    .padding()
                
                if let audioPlayer = audioPlayer {
                    VStack {
                        HStack {
                            Text(stringFromTimeIntervalMusic(interval: currentTime))
                            Spacer()
                            Text(stringFromTimeIntervalMusic(interval: audioPlayer.duration))
                        }
                        .padding()
                        ProgressView(value: currentTime / audioPlayer.duration)
                            .padding([.leading, .bottom, .trailing])
                            .accentColor(.white)

                    }
                    .onReceive(timer) { _ in
                        self.currentTime = audioPlayer.currentTime
                    }
                }
                HStack {
                    Spacer()
                    Button(action: {
                        if isPlaying == false{
                            self.audioPlayer?.play()
                            isPlaying = true
                            pausePlay = "pause.fill"
                        } else {
                            self.audioPlayer?.pause()
                            isPlaying = false
                            pausePlay = "play.fill"
                        }
                    }) {
                        Image(systemName: pausePlay)
                            .resizable()
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: myMusic.music, ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        }
        .preferredColorScheme(.dark)
    }
}


