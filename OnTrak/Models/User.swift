//
//  User.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
