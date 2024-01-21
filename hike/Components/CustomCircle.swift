//
//  CustomCircle.swift
//  hike
//
//  Created by Ahmed Gomaa on 21/01/2024.
//

import SwiftUI

struct CustomCircle: View {
    @State private var isAnimateGradient : Bool = false
    
    
    var body: some View {
        ZStack {
            Circle()
              .fill(
                LinearGradient(
                  colors: [
                    .customIndigoMedium,
                    .customSalmonLight
                  ],
                  startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                  endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                )
              )
              .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                  isAnimateGradient.toggle()
                }
              }
          MotionCirclesViews()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircle()
}
