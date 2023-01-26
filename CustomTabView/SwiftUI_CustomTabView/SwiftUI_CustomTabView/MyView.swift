//
//  MyView.swift
//  SwiftUI_CustomTabView
//
//  Created by 심두용 on 2023/01/26.
//

import SwiftUI

struct MyView: View {
    
    var title: String
    var bgColor: Color
    
    var body: some View {
        ZStack {
            bgColor
               // .edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }.animation(.none)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "MyView", bgColor: Color.yellow)
    }
}
