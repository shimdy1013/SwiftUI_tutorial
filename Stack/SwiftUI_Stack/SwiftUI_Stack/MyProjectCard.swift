//
//  MyProjectCard.swift
//  SwiftUI_Stack
//
//  Created by 심두용 on 2023/01/14.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State
    var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("SwiftUI 공부")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("2 PM ~ 6 PM")
                .foregroundColor(.secondary)
            
            Spacer().frame(height: 20)
            
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(lineWidth: 5)
                            .foregroundColor(.red)
                    )
                Image("2")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())

                Image("3")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                Spacer()
                Button(action: {
                    print("확인 버튼 클릭")
                    self.shouldShowAlert = true
                }) {
                    Text("확인")
                        .font(.system(size: 20))
                        .frame(width: 50)
                        .foregroundColor(Color.white)
                        .padding(15)
                        .background(Color.blue)
                        .cornerRadius(15)
                }
                .alert(isPresented: $shouldShowAlert) {
                    Alert(title: Text("확인되었습니다."))
                }
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(16)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
