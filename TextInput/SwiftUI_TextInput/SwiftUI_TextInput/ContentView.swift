//
//  ContentView.swift
//  SwiftUI_TextInput
//
//  Created by 심두용 on 2023/01/31.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName : String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                TextField("사용자 이름", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                Button(action: {
                    self.userName = ""
                }, label: {
                    if self.userName.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.secondary)
                    }
                })
            }
            
            HStack{
                SecureField("비밀번호", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                Button(action: {
                    self.password = ""
                }, label: {
                    if self.password.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.secondary)
                    }
                })
            }
            Text("입력한 비밀번호 : \(password)")
        } .padding(.horizontal, 50)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
