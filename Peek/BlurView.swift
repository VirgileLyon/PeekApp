//
//  BlurView.swift
//  Peek
//
//  Created by Quentin Durand on 08/02/2021.
//

import SwiftUI
import AVKit

struct BlurView: View {
    
    var myMusic: Music
    @State var audioPlayer: AVAudioPlayer!
    @State var isPlaying: Bool = false
    @State var pausePlay: String = "play.fill"
    @Binding var timeInterval: TimeInterval
    
    var body: some View {
        VStack{
            Image(myMusic.cover)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .blur(radius: 10)
            HourView(timeInterval: $timeInterval)
                .padding(.vertical, 75.0)
            Image(systemName: pausePlay)
                .resizable()
                .frame(width: 75, height: 75)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.gray)
        }
        
    }
}
    
    struct BlurView_Previews: PreviewProvider {
        static var previews: some View {
            BlurView(myMusic: FIRST_TEST_MUSIC, timeInterval: .constant(getTimeInterval()))
        }
    }


