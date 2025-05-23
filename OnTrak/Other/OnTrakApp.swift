//
//  OnTrakApp.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import FirebaseCore
import SwiftUI

@main
struct OnTrakApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
