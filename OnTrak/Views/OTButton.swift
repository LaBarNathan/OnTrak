//
//  OTButton.swift
//  OnTrak
//
//  Created by Nathan LaBar on 6/6/25.
//

import SwiftUI

struct OTButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button
        {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white   )
                    .fontWeight(.bold)
            }
        }
        .padding()
    }
}

#Preview {
    OTButton(title: "Title",
             background: .pink)
    {
        //action
    }
}
