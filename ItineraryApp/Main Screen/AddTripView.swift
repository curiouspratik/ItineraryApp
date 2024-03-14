//
//  AddTripView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import SwiftUI

struct AddTripView: View {
    @State var title: String = ""
    @State var startDate: Date = .now
    @State var endDate: Date = .now
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
            VStack {
                Form{
                    TextField("Title", text: $title)
                    DatePicker("Start Date", selection: $startDate)
                    DatePicker("End Date", selection: $endDate)
                }
            }
            .navigationTitle("Add New Trip")
            .toolbar{
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
