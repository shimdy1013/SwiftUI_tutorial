//
//  MyBlurButtonStyle.swift
//  SwiftUI_ButtonStyle
//
//  Created by 심두용 on 2023/01/31.
//

import SwiftUI

struct MyBlurButtonStyle: ButtonStyle {
    
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .blur(radius: configuration.isPressed ? 10 : 0)
    }
}

struct MyBlurButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button tab")
        }, label: {
            Text("OO")
        }).buttonStyle(MyBlurButtonStyle(color: Color.blue))
    }
}
 

