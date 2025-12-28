//
//  WelcomeView.swift
//  WelcomeScreenOnboard
//
//  Created by Iqbal Alhadad on 28/12/25.
//

import SwiftUI
import Combine

struct WelcomeView: View {
    @State var visibleItem = onboardingItem.first
    @State var currentIndex: Int = 0
    @State var direction = 1
    @State var autoScrollEnabled = true
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    var body: some View {
        
        GeometryReader {
            geo in
            ZStack {
                Color.gray.opacity(0.1).ignoresSafeArea()
                
                VStack(spacing: 54){
                   
                    Text("Skip").bold()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 20){
                            ForEach(onboardingItem) { item in
                                Image(item.imageName)
                                .resizable().scaledToFill()
                                .frame(width: 220, height: 290)
                                .cornerRadius(25)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25).stroke( lineWidth: 4)
                                        .padding(-1)
                                        .foregroundStyle(.white)
                                    
                                }
                                .id(item)
                                .scrollTransition {
                                    content, phase in
                                    content
                                        .opacity(phase.isIdentity ? 1.0 : 0.3)
                                        .scaleEffect(phase.isIdentity ? 1 : 0.8)
                                        .offset(y: phase.isIdentity ? -10: 30)
                                }
                            }
                                
                        }
                        
                        .scrollTargetLayout()
                        .frame(height: 330)
                    }
                    .contentMargins(.horizontal, (geo.size.width - 220)/2)
                    .scrollIndicators(.hidden)
                    .scrollTargetBehavior(.viewAligned)
                    .scrollPosition(id: $visibleItem)
                    .offset(y: -30)
                    
                    OnboardingFooterView(item: visibleItem)
                }
            }
        }
      
    }
}

#Preview {
    WelcomeView()
}
