//
//  AddTaskView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 13/03/24.
//

import SwiftUI
import SwiftData

struct AddTaskView: View {
    @Bindable var trip: Trip
    @State var title: String = ""
    @State var isCompleted: Bool = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            BackgroundView()
                Form{
                    TextField("Title", text: $title)
                        .font(.custom("Chalkboard SE", size: 26))
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                }
                .scrollContentBackground(.hidden)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                            Text("Add New Task")
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
        let newTask = TripTask(taskTitle: title)
        trip.tripTasks.append(newTask)
//        print("task saved")
    }
}

//#Preview {
//    AddTaskView()
//}
