//
//  CustomLabeledContent.swift
//  hike
//
//  Created by Ahmed Gomaa on 28/01/2024.
//

import SwiftUI

struct CustomLabeledContent: View {
    @State var rowLabel : String
    @State var rowContent: String? = nil
    @State var rowIcon: String
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDescription: String? = nil
    
    
    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } 
            else if (rowLinkLabel != nil && rowLinkDescription != nil) {
                Link(rowLinkLabel! ,  destination: URL(string: rowLinkDescription!)!  )
                    .foregroundColor(rowTintColor)
                    .fontWeight(.heavy)
            }
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomLabeledContent(rowLabel: "Developer", rowContent: nil , rowIcon: "apps.iphone" , rowTintColor: .pink , rowLinkLabel: "Google", rowLinkDescription: "http://google.com")
    }
}
