//
//  HeaderView.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import SwiftUI

//View template for login and registration views
struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack {
                Text(title)
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .foregroundColor(.white)
                
                Text(subtitle)
                    .font(.system(size: 30, weight: .regular, design: .default))
                    .foregroundColor(.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
    
}

#Preview {
    HeaderView(title: "Title",
               subtitle: "Subtitle",
               angle: -12.5,
               background: .blue)
}
