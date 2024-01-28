//
//  SettingsView.swift
//  hike
//
//  Created by Ahmed Gomaa on 22/01/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing" )
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreenLight,
                        .customGreenMedium,
                        .customGreenDark
                    ],
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .padding(.top, 8)
                
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            Section (
                header: Text("About"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved. ")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                CustomLabeledContent(rowLabel: "Application", rowContent: "HIKE", rowIcon: "apps.iphone", rowTintColor: .blue)
                
                CustomLabeledContent(rowLabel: "Compatibility", rowContent: "IOS", rowIcon: "info.circle", rowTintColor: .red)
                
                CustomLabeledContent(rowLabel: "Technology", rowContent: "Swift", rowIcon: "swift", rowTintColor: .orange)
                
                CustomLabeledContent(rowLabel: "Version", rowContent: "1.0", rowIcon: "gear", rowTintColor: .purple)
                
                CustomLabeledContent(rowLabel: "Developer", rowContent: "Ahmed", rowIcon: "ellipsis.curlybraces", rowTintColor: .mint)
                
                CustomLabeledContent(rowLabel: "Designer", rowContent: "Gomaa", rowIcon: "paintpalette", rowTintColor: .pink)
                
                CustomLabeledContent(rowLabel: "Website", rowContent: nil , rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "My Profile",  rowLinkDescription: "https://google.com")
            }
        }
     
            
    }
}

#Preview {
    SettingsView()
}
