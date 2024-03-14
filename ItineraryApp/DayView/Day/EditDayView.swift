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
        VStack {
            Form{
                Stepper("Enter Day Num: \(tripDay.dayNum)", value: $tripDay.dayNum)
                DatePicker("Start Time:", selection: $tripDay.dayStartTime)
            }
        }
        .navigationTitle("Edit Sight")
        .toolbar{
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
