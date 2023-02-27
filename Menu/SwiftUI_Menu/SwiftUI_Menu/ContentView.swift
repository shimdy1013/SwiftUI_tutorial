//
//  ContentView.swift
//  SwiftUI_Menu
//
//  Created by 심두용 on 2023/02/27.
//

import SwiftUI

let myPets =  ["멍멍이 🐶", "야옹이 🐯", "찍찍이 🐹"]

struct ContentView: View {
    
    @State private var shouldShowAlert = false
    @State private var myText = ""
    @State private var selected: Int = 0
    
    var body: some View {
        NavigationView(content: {
            VStack(spacing: 10){
                Text("\(myPets[selected])")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                Text("우측 상단의 메뉴 버튼을 눌러주세요.")
                    .font(.title2)
                    .fontWeight(.black)
            }
            .navigationTitle("Hello")
            .toolbar(content: {
                ToolbarItem(content: {
                    Menu(content: {
                        Section {
                            Button {
                                shouldShowAlert = true
                                myText = "AAA"
                            } label: {
                                Label("Alert A", systemImage: "flame.fill")
                            }
                            Button {
                                shouldShowAlert = true
                                myText = "BBB"
                            } label: {
                                Label("Alert B", systemImage: "house.fill")
                            }
                            Button {
                                shouldShowAlert = true
                                myText = "CCC"
                            } label: {
                                Label("Alert C", systemImage: "message.fill")
                            }
                        }
                        
                        Section {
                            Button {
                            } label: {
                                Label("새 파일 만들기", systemImage: "doc")
                            }
                            Button {
                            } label: {
                                Label("새 폴더 만들기", systemImage: "folder")
                            }
                        }
                        
                        Section {
                            Button {
                            } label: {
                                Label("모든 파일 삭제", systemImage: "trash")
                            }
                        }
                        
                        Section {
                            Picker(selection: $selected, label: Text("애완동물 선택")){
                                ForEach(myPets.indices, id: \.self, content: { index in
                                    Text("\(myPets[index])").tag(index)
                                })
                            }
                        }
                        
                    }, label: {
                        Circle()
                            .foregroundColor(Color.yellow)
                            .frame(width: 60, height: 60)
                            .overlay(
                                Label("더보기", systemImage: "ellipsis")
                                    .font(.system(size: 30))
                                    .foregroundColor(.black)
                            )
                    })
                })  // ToolBarItem
            })  // ToolBar
            .alert(isPresented: $shouldShowAlert, content: { Alert(title: Text("알림"),message: Text("\(myText)"), dismissButton: .default(Text("확인")))
            })
        })  // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
