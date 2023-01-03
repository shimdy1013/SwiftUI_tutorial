//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 심두용 on 2023/01/03.
//  Copyright © 2023 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyTextView: View {
    
    // 데이터 연동
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {    // .constant는 Binding 타입에서 제공하는 메서드, true를 Bool타입에서 Binding<Bool>로 변환
        _isActivated = isActivated  // _ 의미 ???, _ 없으면 Binding<Bool>을 Bool 타입에 대입 불가
    }
    
    @State
    var index: Int = 0
    
    let colors = [
        Color.red,
        Color.blue,
        Color.orange,
        Color.green
    ]
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index + 1)")
                .font(.system(size: 30))
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100, alignment: .center)
            Text("활성화 상태 : \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            Spacer()
        }
        .background(colors[index])
        .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                if(self.index == self.colors.count - 1){
                    self.index = 0
                } else {
                    self.index += 1
                }
        }
            
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
