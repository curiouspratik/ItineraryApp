//
//  DaySight.swift
//  ItineraryApp
//
//  Created by Pratik Ashok Patil on 12/03/24.
//

import Foundation
import SwiftData

@Model
final class DaySight {
    var sightTitle: String
    var isVisited: Bool
    
    init(sightTitle: String = "", isVisited: Bool = false) {
        self.sightTitle = sightTitle
        self.isVisited = isVisited
    }
}
