//
//  EditDayView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 14/03/24.
//

import SwiftUI
import SwiftData

struct EditDayView: View {
    @Bindable var tripDay: TripDay
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack {
            BackgroundView()
            Form{
                Stepper("Enter Day Num: \(tripDay.dayNum)", value: $tripDay.dayNum)
                    .font(.custom("Chalkboard SE", size: 26))
                    .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                    .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                DatePicker("Start Time:", selection: $tripDay.dayStartTime)
                    .font(.custom("Chalkboard SE", size: 26))
                    .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                    .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
            }
            .scrollContentBackground(.hidden)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .principal) {
                        Text("Edit Day")
                          .font(.custom("AmericanTypewriter", size: 26))
                          .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                        }
            ToolbarItem(placement: .topBarTrailing){
                Button {
                    saveDay()
                    dismiss()
                } label: {
                    Text("Save Task")
                }
            }
        }
    }
    
    func saveDay(){
        tripDay.dayTitle = "Day \(tripDay.dayNum)"
    }
}
//#Preview {
//    EditDayView()
//}
