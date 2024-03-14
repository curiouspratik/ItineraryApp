//
//  TripDay.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import Foundation
import SwiftData

@Model
final class TripDay {
    var dayTitle : String
    var dayNum : Int
    var dayStartTime: Date
    @Relationship(deleteRule: .cascade) var daySights = [DaySight]()
    
    init(dayTitle: String = "", dayNum: Int = 1, dayStartTime: Date = .now) {
        self.dayTitle = dayTitle
        self.dayNum = dayNum
        self.dayStartTime = dayStartTime
    }
}
