//
//  OnboardingFooterView.swift
//  WelcomeScreenOnboard
//
//  Created by Iqbal Alhadad on 28/12/25.
//

import SwiftUI

struct OnboardingFooterView: View {
    let item: OnboardingItem?
    
    var body: some View {
        if let item {
            VStack(spacing: 10) {
                Text(item.title)
                    .font(.largeTitle)
                    .bold()
                
                Text(item.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .foregroundStyle(.secondary)
            }
            .contentTransition(.numericText())
            .offset(y: -50)
        }
        VStack(spacing: 10) {
            Text("Terms & Privacy Policy")
                .foregroundStyle(.blue)
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "applelogo")
                        .font(.title2)
                    Text("Continue with Apple").bold()
                }
                
                
                
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .foregroundStyle(.white)
                .background(.primary, in: .capsule)
                .padding()
            }
            .tint(.primary)
        }
        
    }
}

