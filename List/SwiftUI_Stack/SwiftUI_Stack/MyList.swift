//
//  MyList.swift
//  SwiftUI_Stack
//
//  Created by 심두용 on 2023/01/16.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    var body: some View {
        
//        List {
//            ForEach(1...10, id: \.self) {
//                Text("Row \($0)")
//            }
//        }
        
//        List {
//            ForEach(1..<10) {
//                Text("Row \($0)")
//            }
//        }

        List {
            Section(header:
            Text("오늘 할 일")
                .font(.headline)
                .foregroundColor(.black)
            
            ) {
                ForEach(1...3, id: \.self) { itemindex in
                    MyCard(icon: "studentdesk", title: "SwiftUI 공부 \(itemindex)", start: "2 PM", end: "6 PM", bgColor: .green)
                }
            }
            .listRowInsets(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10))
            .listRowBackground(Color.indigo)

            Section(header:
            Text("내일 할 일")
                .font(.headline)
                .foregroundColor(.black)
            ) {
                ForEach(1...3, id: \.self) { itemindex in
                    MyCard(icon: "studentdesk", title: "SwiftUI 공부 \(itemindex)", start: "2 PM", end: "6 PM", bgColor: .green)
                }
            }
            .listRowInsets(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10))
            .listRowBackground(Color.indigo)

            
        }
        //.listStyle(PlainListStyle())
        .listStyle(GroupedListStyle())
        .navigationTitle("할 일 목록")
        //.navigationBarHidden(isNavigationBarHidden)
        .onAppear() {
            self.isNavigationBarHidden = false
        }
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
