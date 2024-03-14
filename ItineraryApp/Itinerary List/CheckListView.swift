//
//  CheckListView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 13/03/24.
//

import SwiftUI

struct CheckListView: View {
    @Bindable var trip: Trip
    var body: some View {
            List{
                ForEach(trip.tripTasks, id: \.self) { task in
                        HStack{
                            Button {
                                task.isCompleted.toggle()
                            } label: {
                                Image(systemName: task.isCompleted ? "circle.fill" : "circle")
                            }
                            Text("\(task.taskTitle)")
                        }
                }
                .onDelete(perform: { indexSet in
                    trip.tripTasks.remove(atOffsets: indexSet)
                })
            }
            .navigationTitle("\(trip.tripTitle) CheckList")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        AddTaskView(trip: trip)
                    } label: {
                        Text("Add")
                    }
                }
        }
    }
}
