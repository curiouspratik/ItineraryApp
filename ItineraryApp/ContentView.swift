//
//  ContentView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var trips: [Trip]
    @State var path = [Trip]()
    
    var body: some View {
        NavigationStack(path: $path) {
            List{
                ForEach(trips, id: \.self) { trip in
                    NavigationLink(value: trip) {
                        Text(trip.tripTitle)
                    }
                }
            }
            .navigationTitle("Explorer's Path")
            .navigationDestination(for: Trip.self, destination: TripDetailsView.init)
            .toolbar{
                ToolbarItemGroup(placement: .topBarTrailing){
                    NavigationLink {
                        AddTripView()
                    } label: {
                        Text("Add New")
                    }
                }
            }
        }
    }
    

    func editTrip(){
        // this function will take in some value and push that onto the edit screen
    }
}

#Preview {
    ContentView()
}
