//
//  QRCodeScannerExampleView.swift
//  SwiftUI_QRCode_Reader
//
//  Created by 심두용 on 2023/01/27.
//

import SwiftUI

struct QRCodeScannerExampleView: View {
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?

    var body: some View {
        ZStack {
            if let code = scannedCode {
//                NavigationLink("Next page", destination: NextView(scannedCode: code), isActive: .constant(true)).hidden()
                MyWebView(urlToLoad: code)
            } else {
                MyWebView(urlToLoad: "https://www.naver.com")
            }
            
            VStack(spacing: 10) {
                
                Spacer()
                
                Button(action: {
                    isPresentingScanner = true

                }){
                    Text("로또번호확인")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(12)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: 5)
                        )
                }
                .sheet(isPresented: $isPresentingScanner) {
                    ZStack {
                        CodeScannerView(codeTypes: [.qr]) { response in
                            if case let .success(result) = response {
                                scannedCode = result.string
                                isPresentingScanner = false
                            }
                        }
                        QRCodeGuideLineView()
                    }
                }
                
                Spacer().frame(height:50)
            }
            
        }
    }
}

struct QRCodeScannerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeScannerExampleView()
    }
}
