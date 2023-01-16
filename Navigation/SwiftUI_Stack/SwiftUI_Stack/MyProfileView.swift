//
//  MyProfileView.swift
//  SwiftUI_Stack
//
//  Created by 심두용 on 2023/01/16.
//

import SwiftUI

struct MyProfileView: View {
    
    @Binding var isNavigationBarHidden: Bool

    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                Image("SwiftUI_Image")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .overlay(
                        Text("SDY")
                            .foregroundColor(Color.white)
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                    )
                    .shadow(radius: 5, x: 3, y: 3)
                HStack {
                    NavigationLink(destination: WebView(urlToLoad: "https://beecoding.tistory.com/")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("블로그 바로가기")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding()
                            .background(.yellow)
                            .cornerRadius(10)
                    }
                    Spacer().frame(width: 20)
                    NavigationLink(destination: WebView(urlToLoad: "https://github.com/shimdy1013")
                        .edgesIgnoringSafeArea(.all)

                    ){
                        Text("깃허브 바로가기")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding()
                            .background(.black)
                            .cornerRadius(10)
                    }
                }   // HStack
                .padding(.vertical, 50)
                Spacer()
            }   // VStack
            .padding()
            .navigationTitle("내 프로필")
            .onAppear() {
                isNavigationBarHidden = false
            }
            .navigationBarItems(trailing:
                NavigationLink(destination:
                                Text("설정 화면")
                    .font(.largeTitle)
                    .fontWeight(.black)
                 ){
                Image(systemName: "gear")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                 }
            )
        }   // ScrollView
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
