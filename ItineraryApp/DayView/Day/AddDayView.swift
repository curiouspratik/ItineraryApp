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
        ZStack {
            BackgroundView()
                Form{
                    Stepper("Enter Day Num: \(dayNum)", value: $dayNum)
                        .font(.custom("Chalkboard SE", size: 20))
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                    DatePicker("Start Time:", selection: $dayStartTime)
                        .font(.custom("Chalkboard SE", size: 20))
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                }
                .scrollContentBackground(.hidden)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                            Text("Add New Day")
                              .font(.custom("AmericanTypewriter", size: 26))
                              .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                            }
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
