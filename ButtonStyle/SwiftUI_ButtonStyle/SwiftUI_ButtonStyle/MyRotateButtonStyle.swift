//
//  MyRotateButtonStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by 심두용 on 2023/01/31.
//

import SwiftUI

import SwiftUI

struct MyRotateButtonStyle: ButtonStyle {
    
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .rotationEffect(configuration.isPressed ? Angle(degrees: 90) : Angle(degrees: 0))
    }
}

struct MyRotateButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button tab")
        }, label: {
            Text("OO")
        }).buttonStyle(MyRotateButtonStyle(color: Color.blue))
    }
}
 
