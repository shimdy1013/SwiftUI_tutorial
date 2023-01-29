//
//  QRCodeGuideLineView.swift
//  SwiftUI_QRCode_Reader
//
//  Created by 심두용 on 2023/01/29.
//

import SwiftUI

struct QRCodeGuideLineView: View {
    var body: some View {
        GeometryReader { geometryProxy in
            RoundedRectangle(cornerRadius: 20)
                .stroke(style: StrokeStyle(lineWidth: 10, dash: [20]))
                .frame(width: geometryProxy.size.width / 2, height: geometryProxy.size.width / 2)
                .position(x: geometryProxy.size.width / 2, y: (geometryProxy.size.height / 2) - 50)
                .foregroundColor(Color.cyan)
        }
    }
}

struct QRCodeGuideLineView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeGuideLineView()
    }
}
