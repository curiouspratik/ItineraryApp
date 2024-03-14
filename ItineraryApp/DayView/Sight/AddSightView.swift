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
            VStack {
                Form{
                    TextField("Sight Name", text: $title)
                }
            }
            .navigationTitle("Add New Sight")
            .toolbar{
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
