//
//  CustomBackground.swift
//  hike
//
//  Created by Ahmed Gomaa on 18/01/2024.
//

import SwiftUI

struct CustomBackground: View {
    var body: some View {
        
        ZStack {
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:15)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:5)
                .opacity(0.85)
            
            
            LinearGradient(colors: [Color.customGreenLight, Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)
        } // Zstack
    }
}

#Preview {
    CustomBackground()
        .padding()
        
}
