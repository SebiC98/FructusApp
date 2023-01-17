//
//  FructusApp.swift
//  Fructus
//
//  Created by Sebastian Cioată on 15.01.2023.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView()
            } else{
                ContentView()
            }
        }
    }
}
