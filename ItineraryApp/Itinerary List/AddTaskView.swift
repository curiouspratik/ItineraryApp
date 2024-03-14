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
            VStack {
                Form{
                    TextField("Title", text: $title)
                }
            }
            .navigationTitle("Add New Task")
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
        let newTask = TripTask(taskTitle: title)
        trip.tripTasks.append(newTask)
//        print("task saved")
    }
}

//#Preview {
//    AddTaskView()
//}
