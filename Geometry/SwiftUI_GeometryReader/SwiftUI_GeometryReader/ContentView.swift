//
//  ContentView.swift
//  SwiftUI_GeometryReader
//
//  Created by 심두용 on 2023/01/17.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct ContentView: View {
    
    @State var index : Index = .one
    
    let centerPosition : (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX, y: proxy.frame(in: .local).midY)
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .center, spacing: 0) {
                Button(action: {
                    withAnimation {
                        index = .one
                    }
                }) {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 100, height: proxy.size.height/3)
                        .padding(.horizontal, index == .one ? 50 : 0)
                        .background(Color.red)
                }
                
                Button(action: {
                    withAnimation {
                        index = .two
                    }
                }) {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 100, height: proxy.size.height/3)
                        .padding(.horizontal, index == .two ? 50 : 0)
                        .background(Color.green)
                }
                 
                Button(action: {
                    withAnimation {
                        index = .three
                    }
                }) {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 100, height: proxy.size.height/3)
                        .padding(.horizontal, index == .three ? 50 : 0)
                        .background(Color.blue)
                }
            }
            //.position(x: proxy.frame(in: .local).midX, y: proxy.frame(in: .local).midY)
            .position(centerPosition(proxy))
      }
        .padding()
        .background(Color.yellow)
        .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
