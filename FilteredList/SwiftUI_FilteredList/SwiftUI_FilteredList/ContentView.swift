//
//  ContentView.swift
//  SwiftUI_FilteredList
//
//  Created by 심두용 on 2023/02/20.
//

import SwiftUI

enum School: String, CaseIterable {
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case university = "대학교"
}

struct MyFriend: Identifiable {
    var id = UUID() // 고유ID
    var name: String
    var school: School
}

struct ContentView: View {
    
    @State private var selectionValue = School.elementary
    
    @State private var myFriendsList = [MyFriend]()
    
    // @State(myFirendsList)에 값을 넣으려면 init 메소드 필요
    init() {
        var newList = [MyFriend]()
        
        for i in 0..<20 {
            newList.append(MyFriend(name: "친구 \(i)", school: School.allCases.randomElement()!))
        }
        
        _myFriendsList = State(initialValue: newList)
    }
    
    var body: some View {
        VStack {
            Text("선택된 필터 : \(selectionValue.rawValue)")
            Picker("", selection: $selectionValue, content: {
                Text("초등학교").tag(School.elementary)
                Text("중학교").tag(School.middle)
                Text("고등학교").tag(School.high)
                Text("대학교").tag(School.university)
            })
            .frame(width: 300)
            .pickerStyle(.segmented)
            
            List {
                ForEach(myFriendsList.filter({
                    $0.school == selectionValue
                })) { friendItem in
                    GeometryReader { GeometryProxy in
                        HStack {
                            Text("이름 : \(friendItem.name)")
                                .frame(width: 2 * GeometryProxy.size.width / 5)
                            Divider()
                            Text("학교 : \(friendItem.school.rawValue)")
                                .frame(width: GeometryProxy.size.width / 2)
                        }
                    }
                }
            }
            
            
//            List {
//                ForEach(myFriendsList) { friendItem in
//                    GeometryReader { GeometryProxy in
//                        HStack {
//                            Text("이름 : \(friendItem.name)")
//                                .frame(width: 2 * GeometryProxy.size.width / 5)
//                            Divider()
//                            Text("학교 : \(friendItem.school.rawValue)")
//                                .frame(width: GeometryProxy.size.width / 2)
//                        }
//                    }
//                }
//            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
