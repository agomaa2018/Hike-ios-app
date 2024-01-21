//
//  CardView.swift
//  hike
//
//  Created by Ahmed Gomaa on 18/01/2024.
//

import SwiftUI

struct CardView: View {
    @State private var randomNumber: Int = 1
    @State private var imageNumber: Int = 1
    
    
    func randomImage() {
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while imageNumber == randomNumber
    
        imageNumber = randomNumber
    }
    var body: some View {
        ZStack {
            CustomBackground()
            VStack {
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGrayLight ,
                                    .customGrayMedium
                                ],
                               startPoint: .top,
                               endPoint: .bottom)
                        )
                        Spacer()
                        Button(action: {
                            print("Btn is Clicked")
                        }, label: {
                            CustomButton()
                        })
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal , 30)
                
                
                ZStack {
                    CustomCircle()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 2), value: imageNumber)
                }
                
                Button(action: {
                    randomImage()
                }, label: {
                    Text("Explore More")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x:1, y: 1)
                })
                .buttonStyle(CustomButtonStyle())
                
            }
        }.frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
