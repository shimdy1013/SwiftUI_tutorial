//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by 심두용 on 2023/01/12.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 dd일"
        return formatter
    }()
    
    var today = Date()
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("\(today, formatter: ContentView.dateFormat)")
                    .font(.system(.title3))
                    .fontWeight(.bold)
                    .padding(.trailing, 10)
            }
            Spacer()
            TextView()
            TextView()
            TextView()
            TextView()
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
