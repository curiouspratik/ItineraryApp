//
//  AddSightView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 13/03/24.
//

import SwiftUI
import SwiftData

struct AddSightView: View {
    @Bindable var tripDay: TripDay
    @State var title: String = ""
    @State var isVisited: Bool = false
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack{
            BackgroundView()
                Form{
                    TextField("Sight Name", text: $title)
                        .font(.custom("Chalkboard SE", size: 26))
                        .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                        .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
                }
                .scrollContentBackground(.hidden)
            }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .principal) {
                        Text("Add New Sight")
                          .font(.custom("AmericanTypewriter", size: 26))
                          .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                        }
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        saveTrip()
                        dismiss()
                    } label: {
                        Text("Save Sight")
                    }
                }
        }
    }
    
    private func saveTrip(){
        let newSight = DaySight(sightTitle: title)
        tripDay.daySights.append(newSight)
    }
}
//
//#Preview {
//    AddSightView()
//}
