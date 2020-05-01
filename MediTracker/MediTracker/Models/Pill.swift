//
//  Pill.swift
//  MediTracker
//
//  Created by Brian Rouse on 4/30/20.
//  Copyright © 2020 Brian Rouse. All rights reserved.
//

import Foundation

struct Pill: Codable, Equatable {
    var name: String
    var isPrescription: Bool
    var numberOfPills: UInt
    var dosage: UInt?
    var dosageType: String?
    var frequency: Frequency
}

enum Frequency: String, Codable, CaseIterable {
    case twiceDaily = "Twice Daily"
    case daily = "Daily"
    case weekly = "Weekly"
    case monthly = "Monthly"
    
    static var frequencies: [Frequency] {
        return [.twiceDaily, .daily, .weekly, .monthly]
    }
    
    static func getFrequencyIndex(frequency: Frequency) -> Int {
        switch frequency {
        case .daily:
            return 1
        case .weekly:
            return 2
        case .monthly:
            return 3
        default:
            return 0
        }
    }
}
