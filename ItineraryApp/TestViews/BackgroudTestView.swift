//
//  BackgroudTestView.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 14/03/24.
//

import SwiftUI

struct BackgroudTestView: View {
    var body: some View {
        ZStack{
            Color(red: 1.0, green: 0.894, blue: 0.882)
                .ignoresSafeArea()
            Image("pathChoice")
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    BackgroudTestView()
}
