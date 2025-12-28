//
//  OnboardingItem.swift
//  WelcomeScreenOnboard
//
//  Created by Iqbal Alhadad on 28/12/25.
//

import SwiftUI
struct OnboardingItem: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

let onboardingItem = [
    OnboardingItem(
        imageName: "n1",
        title: "Mount Bromo",
        description: "it's famous destination in East Java"
        
    ),
    
    OnboardingItem(
        imageName: "n2",
        title: "Kapas Biru Waterfall",
        description: "Feel Fresh air and water in here"
        
    ),
    
    OnboardingItem(
        imageName: "n3",
        title: "Nusa Penida",
        description: "Beautiful place in Bali"
        
    )
    
    
]
