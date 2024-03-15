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
            ZStack {
                BackgroundView()
                List{
                    ForEach(trips, id: \.self) { trip in
                        NavigationLink(value: trip) {
                            
                            HStack{
                                Image(systemName: "paperplane.fill")
                                    .resizable()
                                    .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                                    .frame(width: 30, height: 30)
                                VStack{
                                    Text(trip.tripTitle)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.custom("Chalkboard SE", size: 32))
                                        .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                    Text(trip.tripStartDate, style: .date)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .font(.custom("Chalkboard SE", size: 20))
                                        .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                }
                            }
                        }
                    }
                    .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                }
                .scrollContentBackground(.hidden)
                .listRowSpacing(15.0)
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: Trip.self, destination: TripDetailsView.init)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                                Text("Explorer's Path")
                                  .font(.custom("AmericanTypewriter", size: 32))
                                  .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                }
                    ToolbarItemGroup(placement: .topBarTrailing){
                        
                        NavigationLink {
                            AddTripView()
                        } label: {
                            Text("Add New >")
                                .font(.custom("AmericanTypewriter", size: 20))
                                .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                        }
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
