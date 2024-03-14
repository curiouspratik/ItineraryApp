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
        VStack {
            Form{
                TextField("Sight Name", text: $daySight.sightTitle)
            }
        }
        .navigationTitle("Edit Sight")
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
//    EditSightView()
//}
