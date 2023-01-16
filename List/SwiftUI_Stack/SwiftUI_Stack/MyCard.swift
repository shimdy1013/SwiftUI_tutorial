//
//  MyCard.swift
//  SwiftUI_Stack
//
//  Created by 심두용 on 2023/01/14.
//

import SwiftUI

struct MyCard: View {
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            VStack(alignment: .leading){
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(30)
        .background(bgColor)
        .cornerRadius(16)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책 읽기", start: "8 PM", end: "9 PM", bgColor: .green )
    }
}
