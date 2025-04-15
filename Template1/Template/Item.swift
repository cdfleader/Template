//
//  Item.swift
//  Template
//
//  Created by Sharik Mohamed on 10/04/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
