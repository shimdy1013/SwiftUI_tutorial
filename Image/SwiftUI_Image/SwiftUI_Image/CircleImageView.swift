//
//  CircleImageView.swift
//  SwiftUI_Image
//
//  Created by 심두용 on 2023/01/12.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
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
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
