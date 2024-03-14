//
//  DayView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 13/03/24.
//

import SwiftUI

struct DayView: View {
    @Bindable var trip: Trip
    var body: some View {
        /// I don't know if this will be a list
        /// the drawback in list is that it will be clickable for the entire cell, which we don't want, might have to migrate to the old frame style
        List{
            ForEach(trip.tripDays, id: \.self) { tripDay in
                Section(tripDay.dayTitle){
                    ForEach(tripDay.daySights, id:\.self) { daySight in
                        HStack{
                            Button {
                                daySight.isVisited.toggle()
                            } label: {
                                Image(systemName: daySight.isVisited ? "circle.fill" : "circle")
                            }
                            Text(daySight.sightTitle)
                        }
                    }
                }
            }
        }
        .navigationTitle("\(trip.tripTitle) Route")
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    DayListView(trip: trip)
                } label: {
                    Text("Edit")
                }
            }
        }
    }
}

//#Preview {
//    DayView()
//}
