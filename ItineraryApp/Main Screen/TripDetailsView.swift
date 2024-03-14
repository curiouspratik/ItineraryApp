//
//  TripListView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import SwiftUI
import SwiftData

struct TripDetailsView: View {
    @Bindable var trip: Trip
    
    var body: some View {
        List{
            NavigationLink {
                DayView(trip: trip)
            } label: {
                Text("Day View")
            }
            NavigationLink {
                CheckListView(trip: trip)
            } label: {
                Text("CheckList")
            }
        }
        .navigationTitle("\(trip.tripTitle) Trip")
        .toolbar{
            ToolbarItem(placement: .topBarTrailing){
                NavigationLink {
                    EditTripView(trip: trip)
                } label: {
                    Text("Edit Trip")
                }
            }
        }
    }
}

//#Preview {
//    TripDetailsView()
//}
