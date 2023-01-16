//
//  ContentView.swift
//  SwiftUI_Stack
//
//  Created by 심두용 on 2023/01/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing){
                VStack(spacing:0){
                    HStack{
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                            Image(systemName: "line.3.horizontal")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                    }
                    .padding(20)
                    
                    ScrollView {
                        VStack(alignment: .leading, spacing: 7) {
                            Text("할 일 목록")
                                .font(.system(.largeTitle))
                                .fontWeight(.bold)
                                .padding(.horizontal, 10)
                            MyProjectCard()
                            MyCard(icon: "trash.fill", title: "청소", start: "9 AM", end: "10 AM", bgColor: .cyan)
                            MyCard(icon: "figure.cooldown", title: "운동", start: "10 AM", end: "12 PM", bgColor: .indigo)
                            MyCard(icon: "fork.knife.circle.fill", title: "점심", start: "12 PM", end: "1 PM", bgColor: .orange)
                            MyCard(icon: "book.fill", title: "독서", start: "1 PM", end: "2 PM", bgColor: .green)
                            MyCard(icon: "studentdesk", title: "SwiftUI 공부", start: "2 PM", end: "6 PM", bgColor: .yellow)
                        }
                        .padding(.horizontal, 10)

                    }
                }
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                    )
                    .shadow(radius: 10)
                    .padding(.trailing, 10)
            } // ZStack
            .navigationTitle("메인")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear() {
                self.isNavigationBarHidden = true
            }
        }   // Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
