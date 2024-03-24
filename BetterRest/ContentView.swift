//
//  ContentView.swift
//  BetterRest
//
//  Created by Hina Khan on 18/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now

    var body: some View {
        VStack{
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12,step: 0.25)
            DatePicker("Please enter a date", selection: $wakeUp,in: Date.now...
//                       ,displayedComponents: .hourAndMinute
            ).labelsHidden()
            
            Text(Date.now, format: .dateTime.hour().minute())
            Text(Date.now, format: .dateTime.day().month().year())
            Text(Date.now.formatted(date: .long, time: .shortened))
        }
    }
    
    func exampleDates() {
//
        let now = Date.now
        // create a second Date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(86400)
        // create a range from those two
        let range = now...tomorrow
        
        
//      a date that represented 8am today
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? .now
//       Ask for the hour and minute, we’ll be handed back a DateComponents instance with optional values for all its properties.
        let components2 = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components2.hour ?? 0
        let minute = components2.minute ?? 0
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
