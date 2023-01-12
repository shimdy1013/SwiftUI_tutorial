//
//  ContentView.swift
//  SwiftUI_Image
//
//  Created by 심두용 on 2023/01/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("SwiftUI_bgImage")
                    .frame(height: 10)
                    .offset(y: -1700)
                CircleImageView()
                HStack {
                    NavigationLink(destination: WebView(urlToLoad: "https://beecoding.tistory.com/")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("블로그")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding()
                            .background(.yellow)
                            .cornerRadius(10)
                    }
                    Spacer()
                    NavigationLink(destination: WebView(urlToLoad: "https://github.com/shimdy1013")
                        .edgesIgnoringSafeArea(.all)

                    ){
                        Text("깃허브")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding()
                            .background(.black)
                            .cornerRadius(10)
                    }
                }
                .padding(50)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
