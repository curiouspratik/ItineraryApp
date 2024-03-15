//
//  AddTripView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import SwiftUI
import SwiftData

struct AddTripView: View {
    @State var title: String = ""
    @State var startDate: Date = .now
    @State var endDate: Date = .now
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
            ZStack {
                BackgroundView()
                Form{
                    TextField("Title", text: $title)
                        .font(.custom("Chalkboard SE", size: 26))
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                    DatePicker("Start Date", selection: $startDate)
                        .font(.custom("Chalkboard SE", size: 20))
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                    DatePicker("End Date", selection: $endDate)
                        .font(.custom("Chalkboard SE", size: 20))
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                }
                .scrollContentBackground(.hidden)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                            Text("Add New Trip")
                              .font(.custom("AmericanTypewriter", size: 26))
                              .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                            }
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        saveTrip()
                        dismiss()
                    } label: {
                        Text("Save Trip")
                    }
                }
        }
    }
    
    private func saveTrip(){
        // I can add the passing of all the days here
        let newTrip = Trip(tripTitle: title, tripStartDate: startDate, tripEndDate: endDate)
        modelContext.insert(newTrip)
        print("trip saved")
    }
}

//#Preview {
//    AddTripView()
//}
