//
//  TripTasks.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import Foundation
import SwiftData

@Model
final class TripTask {
    var taskTitle: String
    var isCompleted: Bool
    
    init(taskTitle: String = "", isCompleted: Bool = false) {
        self.taskTitle = taskTitle
        self.isCompleted = isCompleted
    }
}
