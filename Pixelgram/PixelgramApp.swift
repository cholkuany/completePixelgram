//
//  PixelgramApp.swift
//  Pixelgram
//
//  Created by Noah Funtanilla on 8/15/22.
//

import SwiftUI

@main
struct PixelgramApp: App {
    var body: some Scene {
        WindowGroup {
           LandingPageView()
                .environmentObject(AuthenticationViewModel())
                .environmentObject(RegistrationViewModel())
        }
    }
}
