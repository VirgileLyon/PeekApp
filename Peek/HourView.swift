//
//  HourView.swift
//  Peek
//
//  Created by Quentin Durand on 08/02/2021.
//

import SwiftUI

func getTimeInterval () -> TimeInterval{
    let actualDateComponents = Calendar.current.dateComponents([.hour, .minute, .second], from: Date())
    
    let sixPMDateComponents = DateComponents(hour: 12)
    
    let actualDate = Calendar.current.date(from: actualDateComponents)
    let sixPMDate = Calendar.current.date(from: sixPMDateComponents)
    
    return (actualDate?.distance(to: sixPMDate!))!
}

func stringFromTimeInterval(interval:TimeInterval) -> String {
    
    let ti = NSInteger(interval)
    let seconds = ti % 60
    let minutes = (ti / 60) % 60
    let hours = (ti / 3600)
    
    return String(format: "%0.2d:%0.2d:%0.2d",hours,minutes,seconds)
}

func stringFromTimeIntervalMusic(interval:TimeInterval) -> String {
    
    let ti = NSInteger(interval)
    let seconds = ti % 60
    let minutes = (ti / 60) % 60
    
    return String(format: "%0.2d:%0.2d",minutes,seconds)
}

struct HourView: View {
    
    @State private var timeNow = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @Binding var timeInterval: TimeInterval
    
    var body: some View {
        VStack {
            
            Text("- " + timeNow)
                .onReceive(timer) { _ in
                    timeInterval -= 1
                    self.timeNow = stringFromTimeInterval(interval: timeInterval)
                }
        }
        .font(.title)
        .preferredColorScheme(.dark)
        
    }
}

struct HourView_Previews: PreviewProvider {
    static var previews: some View {
        HourView(timeInterval: .constant(getTimeInterval()))
    }
}










//struct HourView: View {
//
//
//
//        @State var timeNow = ""
//        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//        var dateFormatter: DateFormatter {
//                let fmtr = DateFormatter()
//                fmtr.dateFormat = "HH:mm:ss"
//                return fmtr
//        }
//
//        var body: some View {
//                Text("Currently: " + timeNow)
//                        .onReceive(timer) { _ in
//                                self.timeNow = dateFormatter.string(from: Date())
//                        }
//        }
//}
