//
//  EditTripView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import SwiftUI
import SwiftData

struct EditTripView: View {
    @Bindable var trip: Trip
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
            VStack {
                Form{
                    TextField("Title", text: $trip.tripTitle)
                    DatePicker("Start Date", selection: $trip.tripStartDate)
                    DatePicker("End Date", selection: $trip.tripEndDate)
                }
            }
            .navigationTitle("Edit Trip")
            .toolbar{
            ToolbarItem(placement: .topBarTrailing){
                Button {
                    dismiss()
                } label: {
                    Text("Save Trip")
                }
            }
        }
    }
}
//#Preview {
//    EditTripView()
//}
