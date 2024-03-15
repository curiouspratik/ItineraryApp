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
        ZStack{
            BackgroundView()
                List{
                    ForEach(trip.tripDays, id: \.self) { tripDay in
                        NavigationLink {
                            EditDayView(tripDay: tripDay)
                        } label: {
                            Text("Edit \(tripDay.dayTitle)")
                                .font(.custom("Chalkboard SE", size: 26))
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                        }
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        NavigationLink {
                            SightListView(tripDay: tripDay)
                        } label: {
                            Text("\(tripDay.dayTitle) Sight List")
                                .font(.custom("Chalkboard SE", size: 26))
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                        }
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                    }
                    .onDelete(perform: { indexSet in
                        trip.tripDays.remove(atOffsets: indexSet)
                    })
                }
                .scrollContentBackground(.hidden)
                .listRowSpacing(15.0)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal) {
                                Text("\(trip.tripTitle) Day List")
                                  .font(.custom("AmericanTypewriter", size: 20)) /// This in production app should be based on length of the trip title and the calculations can be part of init function.... while setting up the view
                                  .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                }
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
}
//#Preview {
//    DayListView()
//}
