//
//  OnTrakItem.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import Foundation

//Tasks "traks" object
//isDone for task completion toggling
struct OnTrakItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func toggleDone(_ state: Bool) {
        isDone = state
    }
}
