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
        ZStack{
            BackgroundView()
            VStack{
                ScrollView{
                    ForEach(trip.tripDays, id: \.self) { tripDay in
                        if tripDay.dayNum % 2 == 1{
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .foregroundStyle(Color.clear)
                                    Image("path_\(tripDay.dayNum%12)")
                                        .resizable()
                                        .frame(width: 100, height: 100, alignment: .center)
                                }
                                VStack(spacing: -5){
                                    Text(tripDay.dayTitle)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.custom("Chalkboard SE", size: 32))
                                        .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                    Text(tripDay.dayStartTime.formatted(date: .omitted, time: .shortened))
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.custom("Chalkboard SE", size: 24))
                                        .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                    ForEach(tripDay.daySights, id:\.self) { daySight in
                                        Text(daySight.sightTitle)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .font(.custom("Chalkboard SE", size: 24))
                                            .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                    }
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                            }
                        } else {
                            HStack{
                                VStack(spacing: -5){
                                    Text(tripDay.dayTitle)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.custom("Chalkboard SE", size: 32))
                                        .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                    Text(tripDay.dayStartTime.formatted(date: .omitted, time: .shortened))
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.custom("Chalkboard SE", size: 24))
                                        .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                    ForEach(tripDay.daySights, id:\.self) { daySight in
                                        Text(daySight.sightTitle)
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .font(.custom("Chalkboard SE", size: 24))
                                            .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                    }
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                                ZStack{
                                    Rectangle()
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .foregroundStyle(Color.clear)
                                    Image("path_\(tripDay.dayNum%12)")
                                        .resizable()
                                        .frame(width: 100, height: 100, alignment: .center)
                                }
                            }
                        }
                        
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(for: Trip.self, destination: TripDetailsView.init)
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                        Text("\(trip.tripTitle) Route")
                          .font(.custom("AmericanTypewriter", size: 26))
                          .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                        }
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
