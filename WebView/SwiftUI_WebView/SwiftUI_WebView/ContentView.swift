//
//  ContentView.swift
//  SwiftUI_WebView
//
//  Created by 심두용 on 2023/01/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.naver.com")) {
                    Text("Naver")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.daum.net")) {
                    Text("Daum")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.google.com")) {
                    Text("Google")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
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
