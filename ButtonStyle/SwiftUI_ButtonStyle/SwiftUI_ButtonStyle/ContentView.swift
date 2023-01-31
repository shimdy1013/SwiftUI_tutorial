//
//  ContentView.swift
//  SwiftUI_ButtonStyle
//
//  Created by 심두용 on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Button(action: {
                print("Button Tab")
            }, label: {
                Text("탭 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button(action: {
                print("Button Tab")
            }, label: {
                Text("롱탭 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.green, type: .long))
            
            Button(action: {
                print("Button Tab")
            }, label: {
                Text("회전 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyRotateButtonStyle(color: Color.red))
            
            Button(action: {
                print("Button Tab")
            }, label: {
                Text("축소 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MySmallerButtonStyle(color: Color.purple))
            
            Button(action: {
                print("Button Tab")
            }, label: {
                Text("블러 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyBlurButtonStyle(color: Color.cyan))
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
