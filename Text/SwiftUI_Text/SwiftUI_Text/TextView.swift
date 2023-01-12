//
//  TextView.swift
//  SwiftUI_Text
//
//  Created by 심두용 on 2023/01/12.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            HStack {
                Text("What is Lorem Ipsum?")
                    .font(.system(.title2))
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                Spacer()
            }
            .background(Color.cyan)
            .cornerRadius(7)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
            //.tracking(2)  // 글자 간격
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .lineLimit(4)     // 최대 라인 수
            // .lineSpacing(2)  // 라인 간격
                .padding(.all, 16)
                .background(Color.yellow)
                .cornerRadius(7)
            // .truncationMode(.tail)  // 글자 수 초과 ... 위치
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
