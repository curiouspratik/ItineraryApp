//
//  EditSightView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 13/03/24.
//

import SwiftUI
import SwiftData

struct EditSightView: View {
    @Bindable var daySight : DaySight
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack{
            BackgroundView()
            Form{
                TextField("Sight Name", text: $daySight.sightTitle)
                    .font(.custom("Chalkboard SE", size: 26))
                    .listRowBackground(Color(red: 1.0, green: 0.894, blue: 0.882))
                    .foregroundStyle(Color(red: 0.533, green: 0.024, blue: 0.808))
            }
            .scrollContentBackground(.hidden)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .principal) {
                        Text("Edit Sight")
                          .font(.custom("AmericanTypewriter", size: 26))
                          .foregroundColor(Color(red: 0.533, green: 0.024, blue: 0.808))
                        }
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
//    EditSightView()
//}
