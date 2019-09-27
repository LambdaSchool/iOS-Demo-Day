//
//  EventModel.swift
//  BuildWeekRestart
//
//  Created by Dani on 9/25/19.
//  Copyright © 2019 Dani. All rights reserved.
//

import Foundation
import UIKit

struct Event : Codable {
    let title:String
    let date:Date
    let category:Category
    func dateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: date)
    }
}

enum Category: String, Codable {
    case Home
    case Work
    case Anniversary
    case Holiday
    case Birthday
    case Other

    func colour() -> UIColor {
    switch self {
    case .Home:
        return UIColor.blue
    case .Work:
        return UIColor.green
    case .Anniversary:
        return UIColor.purple
    case .Holiday:
        return UIColor.orange
    case .Birthday:
        return UIColor.cyan
    case .Other:
        return UIColor.gray
    }
}
}

//class EventListController: Codable {
//    var event: [Event] = []
//    let initKey = "initalizeKey"
//    private(set) var initalizeChecker: String?
//    
//    init() {
//        initalizeChecker = UserDefaults.standard.bool(forKey: initKey)
//        for 
//    }
//}
