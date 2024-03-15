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
        ZStack {
            BackgroundView()
            List{
                ForEach(tripDay.daySights, id: \.self) { daySight in
                    Text("\(daySight.sightTitle)")
                        .font(.custom("Chalkboard SE", size: 20))
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                    /// The variables are not being able to track in Edit View, maybe I need UUID so I can identify duplicate title entries distinctly
                    //                    NavigationLink {
                    //                        EditSightView(daySight: daySight)
                    //                    } label: {
                    //                        Text("\(daySight.sightTitle)")
                    //                    }
                }
                .onDelete(perform: { indexSet in
                    tripDay.daySights.remove(atOffsets: indexSet)
                })
            }
            .scrollContentBackground(.hidden)
        }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                            Text("\(tripDay.dayTitle) CheckList")
                              .font(.custom("AmericanTypewriter", size: 26))
                              .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                            }
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
