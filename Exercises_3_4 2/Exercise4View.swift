
//
//  ContentView.swift
//  Exercise 3 & 4  (2)
//
//  Created by fatima qeshta on 20/12/2024.
//

import SwiftUI

struct Exercise4View: View {
    @State private var originAirport: String = ""
    @State private var destinationAirport: String = ""
    @State private var callSign: String = ""
    @State private var departureDate: Date = Date()
    @State private var takenOff: Bool = false
    @State private var aircraftType: String = "Boeing 747"
    @State private var aircraftCapacity: Int = 300
    @State private var aircraftColor: Color = .white

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Flight Description")) {
                    TextField("Origin Airport", text: $originAirport)
                    TextField("Destination Airport", text: $destinationAirport)
                    TextField("Call Sign", text: $callSign)
                    DatePicker("Departure Date", selection: $departureDate, displayedComponents: .date)
                    Toggle("Taken Off?", isOn: $takenOff)
                }
                
                Section(header: Text("Aircraft Information")) {
                    Picker("Aircraft Type", selection: $aircraftType) {
                        Text("Boeing 747").tag("Boeing 747")
                        Text("Airbus A320").tag("Airbus A320")
                        Text("Cessna 172").tag("Cessna 172")
                    }
                    Stepper("Aircraft Capacity: \(aircraftCapacity)", value: $aircraftCapacity, in: 1...500)
                    ColorPicker("Aircraft Color", selection: $aircraftColor)
                    
                    Rectangle()
                        .foregroundColor(aircraftColor)
                        .frame(height: 50)
                }
            }
            .navigationTitle("Airport Simulator")
        }
    }
}
