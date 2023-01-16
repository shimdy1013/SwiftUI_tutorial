//
//  MyBasicCard.swift
//  SwiftUI_Stack
//
//  Created by 심두용 on 2023/01/14.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "video")
                .font(.system(size: 40))
                .foregroundColor(.white)
            VStack(alignment: .leading){
                Text("YouTube")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("Youtube")
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(30)
        .background(Color.red)
        .cornerRadius(16)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
