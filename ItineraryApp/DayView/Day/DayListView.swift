//
//  DayListView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 14/03/24.
//

import SwiftUI
import SwiftData

struct DayListView: View {
    @Bindable var trip : Trip
    var body: some View {
            List{
                ForEach(trip.tripDays, id: \.self) { tripDay in
                    NavigationLink {
                        EditDayView(tripDay: tripDay)
                    } label: {
                        Text("Edit \(tripDay.dayTitle)")
                    }
                    NavigationLink {
                        SightListView(tripDay: tripDay)
                    } label: {
                        Text("\(tripDay.dayTitle) Sight List")
                    }
                }
                .onDelete(perform: { indexSet in
                    trip.tripDays.remove(atOffsets: indexSet)
                })
            }
            .navigationTitle("\(trip.tripTitle) Day List")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        AddDayView(trip: trip)
                    } label: {
                        Text("Add")
                    }
                }
        }
    }
}
//#Preview {
//    DayListView()
//}
