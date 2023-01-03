//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jeff Jeong on 2020/06/30.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //
    @State var isActivated: Bool = false
    
    // 몸체
    var body: some View {
        NavigationView{
            
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                } // Hstack
                .padding(isActivated ? 50.0 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {      // 탭 제스쳐
                    withAnimation{       // 애니메이션
                        self.isActivated.toggle()    // toggle() : true이면 false로 false이면 true로
                    }
                    
                }
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(30)
                } .padding(.top, 50)
            }
            
        }
        
    }
}

struct MyListView: View {
    var body: some View {

        NavigationView{
            List(0..<4){ index in
                NavigationLink(destination: MyTextView() ){
                    Text("아이템 \(index+1)")
                }
            }
        }
        .navigationBarTitle("네비게이션", displayMode: .large)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
