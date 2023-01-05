//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jeff Jeong on 2020/06/30.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI


struct MyVstackView: View {
    
    // 데이터 연동
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {    // .constant는 Binding 타입에서 제공하는 메서드, true를 Bool타입에서 Binding<Bool>로 변환
        _isActivated = isActivated  // _ 의미 ???, _ 없으면 Binding<Bool>을 Bool 타입에 대입 불가
    }
    
    
    var body: some View {
        VStack {
             Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
             Text("2!")
               .fontWeight(.bold)
                .font(.system(size: 60))
             Text("3!")
              .fontWeight(.bold)
                .font(.system(size: 60))
        } // Vstack
        .background(isActivated ? Color.green : Color.red)
        .padding(isActivated ? 10 : 0)
    }
}

// 보여주는 용도
//struct MyVstackView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyVstackView()
//    }
//}
