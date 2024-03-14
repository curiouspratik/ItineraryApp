//
//  EditTaskView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 13/03/24.
//

import SwiftUI
import SwiftData

struct EditTaskView: View {
    @Bindable var task : TripTask
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Form{
                TextField("Title", text: $task.taskTitle)
            }
        }
        .navigationTitle("Edit Task")
        .toolbar{
            ToolbarItem(placement: .topBarTrailing){
                Button {
                    dismiss()
                } label: {
                    Text("Save Task")
                }
            }
        }
    }
}

//#Preview {
//    EditTaskView()
//}
