//
//  ContentView.swift
//  SwiftUI_Toast_Popup
//
//  Created by 심두용 on 2023/02/07.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    //@State var showingPopup = false
    @State var showingBottomSolidMessage = false
    @State var showingBottomToastMessage = false
    @State var showingTopSolidMessage = false
    @State var showingTopToastMessage = false
    @State var showingPopup = false

    
    func createBottomSolidMessage() -> some View {
        HStack {
            Image(systemName: "book.fill")
                .font(.system(size: 35))
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 0) {
                Text("안내 메세지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("솔리드 팝업 메시지")
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                    .lineLimit(3)
                Divider().opacity(0)
            }
        }
        .padding(10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
        .background(Color.purple)
    }
    
    func createBottomToastMessage() -> some View {
        HStack(alignment: .top) {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y:5)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text("안내 메세지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Text("토스트 팝업 메시지")
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)
            }
        }
        .padding(15)
        .frame(width: 300)
        .background(Color.orange)
        .cornerRadius(15)
    }
    
    func createTopSolidMessage() -> some View {
        HStack {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y:5)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text("안내 메세지")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                Text("솔리드 팝업 메시지")
                    .font(.system(size: 14))
                    .foregroundColor(Color.black)
                    .lineLimit(3)
                Divider().opacity(0)
            }
        }
        .padding(10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : 38)
        .background(Color.cyan)
    }
    
    func createTopToastMessage() -> some View {
        HStack(alignment: .top) {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y:5)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text("안내 메세지")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                Text("토스트 팝업 메시지")
                    .font(.system(size: 14))
                    .foregroundColor(Color.black)
                Divider().opacity(0)
            }
        }
        .padding(15)
        .frame(width: 300)
        .background(Color.yellow)
        .cornerRadius(15)
    }
    
    func createPopup() -> some View {
        VStack(spacing: 10){
                
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y:5)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            Text("팝업 메세지")
                .foregroundColor(.white)
                .fontWeight(.bold)
            Text("ㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇ\n ㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇㅍㅇ")
                .font(.system(size: 14))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
            Spacer().frame(height: 30)
            
            Button(action: {
                self.showingPopup = false
            }, label: {
                Text("닫기")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            })
            .frame(width: 100, height: 50)
            .background(Color.white)
            .cornerRadius(25)
        }
        .padding(.vertical, 20)
        .padding(.horizontal, 20)
        .background(Color.init(hexcode: "ff0000"))
        .cornerRadius(15)
        .shadow(radius: 10)
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                
                Spacer()
                
                Button(action: {
                    self.showingBottomSolidMessage = true
                }, label: {
                    Text("바텀 솔리드 메세지")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.showingBottomToastMessage = true
                }, label: {
                    Text("바텀 토스트 메세지")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.showingTopSolidMessage = true
                }, label: {
                    Text("탑 솔리드 메세지")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color.cyan)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.showingTopToastMessage = true
                }, label: {
                    Text("탑 토스트 메세지")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.showingPopup = true
                }, label: {
                    Text("팝업")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.init(hexcode: "ff0000"))
                        .cornerRadius(10)
                })
                
                Spacer()
                
            }   // VStack
            .ignoresSafeArea(.all)
            
            
            
        }   // ZStack
        
        // Bottom Solid
        .popup(isPresented: $showingBottomSolidMessage) {
            createBottomSolidMessage()
        } customize: {
            //$0.autohideIn(2)
            $0.type(.toast)
        }
        
        // Bottom Toast
        .popup(isPresented: $showingBottomToastMessage) {
            createBottomToastMessage()
        } customize: {
            //$0.autohideIn(2)
            $0.type(.floater())
        }
        
        // Top Solid
        .popup(isPresented: $showingTopSolidMessage) {
            createTopSolidMessage()
        } customize: {
            //$0.autohideIn(2)
            $0
                .position(.top)
                .type(.toast)
        }
        
        // Top Toast
        .popup(isPresented: $showingTopToastMessage) {
            createTopToastMessage()
        } customize: {
            //$0.autohideIn(2)
            $0
                .position(.top)
                .type(.floater())
        }
        
        // Popup
        .popup(isPresented: $showingPopup) {
            createPopup()
        } customize: {
            //$0.autohideIn(2)
            $0
                .position(.bottom)
                .type(.default)
                .closeOnTap(false)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
