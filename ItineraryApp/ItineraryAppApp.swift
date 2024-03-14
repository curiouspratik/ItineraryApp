//
//  ItineraryAppApp.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import SwiftUI
import SwiftData

@main
struct ItineraryAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Trip.self)
    }
    
}
