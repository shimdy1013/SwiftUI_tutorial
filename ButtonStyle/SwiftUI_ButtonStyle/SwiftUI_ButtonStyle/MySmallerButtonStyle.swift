//
//  MySmallerButtonStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by 심두용 on 2023/01/31.
//

import SwiftUI

struct MySmallerButtonStyle: ButtonStyle {
    
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}

struct MySmallerButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button tab")
        }, label: {
            Text("OO")
        }).buttonStyle(MySmallerButtonStyle(color: Color.blue))
    }
}
 
