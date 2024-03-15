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
        ZStack{
            BackgroundView()
            List{
                NavigationLink {
                    DayView(trip: trip)
                } label: {
                    HStack{
                        Image("pathChoice")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .leading)
                            
                        Text("Day View")
                            .font(.custom("Chalkboard SE", size: 32))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                            
                    }
                }
                .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                NavigationLink {
                    CheckListView(trip: trip)
                } label: {
                    HStack{
                        Text("CheckList")
                            .font(.custom("Chalkboard SE", size: 32))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                            
                        Image("checklistChoice")
                            .resizable()
                            .frame(width: 100, height: 100,  alignment: .trailing)
                    }
                }
                .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
            }
            .scrollContentBackground(.hidden)
            .listRowSpacing(15.0)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                            Text("\(trip.tripTitle) Trip")
                              .font(.custom("AmericanTypewriter", size: 26))
                              .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                            }
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
}

//#Preview {
//    TripDetailsView()
//}
