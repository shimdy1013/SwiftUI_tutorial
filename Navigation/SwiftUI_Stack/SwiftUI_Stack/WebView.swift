//
//  WebView.swift
//  SwiftUI_Stack
//
//  Created by 심두용 on 2023/01/16.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
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
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<WebView>) {
        
    }
    
}


struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlToLoad: "https://www.naver.com")
    }
}
