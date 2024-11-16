//
//  the_big_bang_theoryApp.swift
//  the big bang theory
//
//  Created by luis david diaz ramirez on 15/11/24.
//

import SwiftUI

@main
struct the_big_bang_theoryApp: App {
    @StateObject private var bigbangVM = BigBangViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(bigbangVM)
        }
    }
}
