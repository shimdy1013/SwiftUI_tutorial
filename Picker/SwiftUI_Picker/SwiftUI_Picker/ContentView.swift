//
//  ContentView.swift
//  SwiftUI_Picker
//
//  Created by 심두용 on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectionValue = 0
    
    var selectionColor = [Color.red, Color.green, Color.blue]
    var selectionColorText = ["레드","그린","블루"]
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(selectionColor[selectionValue])
            Text("세그먼트 value : \(selectionValue)")
            Text("선택된 색깔 : \(selectionColorText[selectionValue])")
            Picker("", selection: $selectionValue, content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            }).pickerStyle(.segmented)
                .padding()
            Picker("", selection: $selectionValue, content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
            .padding()
            .border(selectionColor[selectionValue], width: 5)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
