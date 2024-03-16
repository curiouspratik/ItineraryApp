//
//  Trip.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import Foundation
import SwiftData


extension Calendar {
    func numberOfDaysBetween(_ from: Date, and to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        
        return numberOfDays.day! + 1 // <1>
    }
}

@Model
final class Trip {
    /// var UUID : ios property, through which it attaches a unique id to each object - Old Style
    var tripTitle: String
    var tripStartDate: Date
    var tripEndDate: Date
//    var numOfDays : Int
    @Relationship(deleteRule: .cascade) var tripDays = [TripDay]()
    @Relationship(deleteRule: .cascade) var tripTasks = [TripTask]()
    
    init(tripTitle: String = "", tripStartDate: Date = .now, tripEndDate: Date = .now) {
        self.tripTitle = tripTitle
        self.tripStartDate = tripStartDate
        self.tripEndDate = tripEndDate
//        if tripStartDate < tripEndDate {
//            self.numOfDays =  Calendar.current.numberOfDaysBetween(tripStartDate, and: tripEndDate)
//        } else {
//            self.numOfDays = 5
//        }
//        setupAllDays()
    }
    
//    func setupAllDays(){
//        for i in 1...self.numOfDays {
//            let dayDate = Calendar.current.date(byAdding: .day, value: i-1, to: self.tripStartDate)
//            let day = TripDay(dayTitle: "Day \(i)", dayNum: i, dayDate: dayDate ?? Date.now)
//            tripDays.append(day)
//        }
//    }
}


