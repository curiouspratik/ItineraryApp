//
//  SightListView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 14/03/24.
//

import SwiftUI
import SwiftData

struct SightListView: View {
    @Bindable var tripDay: TripDay
    var body: some View {
            List{
                ForEach(tripDay.daySights, id: \.self) { daySight in
                    NavigationLink {
                        EditSightView(daySight: daySight)
                    } label: {
                        Text("\(daySight.sightTitle)")
                    }
                }
                .onDelete(perform: { indexSet in
                    tripDay.daySights.remove(atOffsets: indexSet)
                })
            }
            .navigationTitle("\(tripDay.dayTitle) CheckList")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        AddSightView(tripDay: tripDay)
                    } label: {
                        Text("Add")
                    }
                }
        }
    }
}

//#Preview {
//    SightListView()
//}
