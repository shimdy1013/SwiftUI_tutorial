//
//  MyCustomTapView.swift
//  SwiftUI_CustomTabView
//
//  Created by 심두용 on 2023/01/26.
//

import SwiftUI

enum TabIndex {
    case home, cart, profile
}

struct MyCustomTapView: View {
    
    @State var tabIndex: TabIndex
    @State var largerScale: CGFloat = 1.3
    
    func changeMyView(tabIndex: TabIndex) -> MyView {
        switch tabIndex {
        case .home :
            return MyView(title: "홈", bgColor: Color.yellow)
        case .cart :
            return MyView(title: "장바구니", bgColor: Color.green)
        case .profile :
            return MyView(title: "프로필", bgColor: Color.purple)
//        default :
//            return MyView(title: "홈", bgColor: Color.yellow)
        }
    }
    
    func changeIconColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home :
            return Color.cyan
        case .cart :
            return Color.primary
        case .profile :
            return Color.brown
        }
    }
    
    func calcCircleBgPosition(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat{
        switch tabIndex {
        case .home :
            return -(geometry.size.width / 3)
        case .cart :
            return 0
        case .profile :
            return geometry.size.width / 3
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom){
                self.changeMyView(tabIndex: self.tabIndex)
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: self.calcCircleBgPosition(tabIndex: self.tabIndex, geometry: geometry), y: 10)
                    .foregroundColor(Color.white)
                VStack {
                    HStack(spacing: 0){
                        Button(action:{
                            withAnimation {
                                self.tabIndex = .home
                            }
                        }){
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .home ? largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 60)
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                                .background(Color.white)
                        }
                        Button(action:{
                            withAnimation {
                                self.tabIndex = .cart
                            }
                        }){
                            Image(systemName: "cart.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .cart ? largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 60)
                                .offset(y: self.tabIndex == .cart ? -10 : 0)
                                .background(Color.white)
                        }
                        Button(action:{
                            withAnimation {
                                self.tabIndex = .profile
                            }
                        }){
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .profile ? largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .profile ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 60)
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                                .background(Color.white)
                        }
                    }   // HStack
//                    Rectangle()
//                        .foregroundColor(Color.white)
//                        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 0)
                }   // VStack
                
            }
        } .edgesIgnoringSafeArea(.all)
    }
}

struct MyCustomTapView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTapView(tabIndex: .home)
    }
}
