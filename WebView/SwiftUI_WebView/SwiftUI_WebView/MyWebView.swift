//
//  MyWebView.swift
//  SwiftUI_WebView
//
//  Created by 심두용 on 2023/01/05.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    // UIView를 사용 가능
    // UiViewController -> UIViewControllerRepresentable

    var urlToLoad: String
    
    // UIView 만들기
    func makeUIView(context: Context) -> some WKWebView {
        
        // unwrapping
        guard let url = URL(string: urlToLoad) else {
            return WKWebView()
        }
        
        // webView 인스턴스 생성
        let webView = WKWebView()
        
        // webView 로드
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    
    // 업데이트 UIView
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebView>) {
        
    }
    
}


struct Previews_MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
