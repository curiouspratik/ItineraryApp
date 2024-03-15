//
//  CheckListView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 13/03/24.
//

import SwiftUI
import SwiftData

struct CheckListView: View {
    @Bindable var trip: Trip
    var body: some View {
            ZStack{
                BackgroundView()
                List{
                    ForEach(trip.tripTasks, id: \.self) { task in
                            HStack{
                                Button {
                                    task.isCompleted.toggle()
                                } label: {
                                    Image(systemName: task.isCompleted ? "circle.fill" : "circle")
                                        .resizable()
                                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                                        .frame(width: 30, height: 30)
                                }
                                Text("\(task.taskTitle)")
                                    .font(.custom("Chalkboard SE", size: 32))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                            }
                            .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                    }
                    
                    .onDelete(perform: { indexSet in
                        trip.tripTasks.remove(atOffsets: indexSet)
                    })
                }
                .scrollContentBackground(.hidden)
                .listRowSpacing(15.0)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal) {
                                Text("\(trip.tripTitle) CheckList")
                                  .font(.custom("AmericanTypewriter", size: 20)) /// This in production app should be based on length of the trip title and the calculations can be part of init function.... while setting up the view
                                  .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                                }
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
}
