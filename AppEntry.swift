//
//  XsandOsApp.swift
//  XsandOs
//
//  Created by Rosamond Patricia Selamat Lie on 19/03/26.
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var game = GameService()
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(game)
        }
    }
}
