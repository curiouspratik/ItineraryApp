//
//  AddDayView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 14/03/24.
//

import SwiftUI
import SwiftData

struct AddDayView: View {
    @Bindable var trip: Trip
    @State var title: String = ""
    @State var dayNum: Int = 0
    @State var dayStartTime: Date = .now
    @Environment(\.dismiss) private var dismiss
    var body: some View {
            VStack {
                Form{
                    Stepper("Enter Day Num: \(dayNum)", value: $dayNum)
                    DatePicker("Start Time:", selection: $dayStartTime)
                }
            }
            .navigationTitle("Add New Day")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        saveTrip()
                        dismiss()
                    } label: {
                        Text("Save Task")
                    }
                }
        }
    }
    
    private func saveTrip(){
        title = "Day \(dayNum)"
        let newDay = TripDay(dayTitle: title, dayNum: dayNum, dayStartTime: dayStartTime)
        trip.tripDays.append(newDay)
    }
}

//#Preview {
//    AddDayView()
//}
