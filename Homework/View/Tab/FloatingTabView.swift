//
//  FloatingTabView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/27.
//

import SwiftUI

struct FloatingTabView: View {
    var tabs: [TabItem] = {
        let home = TabItem(imageID: "house", selectedImageID: "house.fill", title: "홈")
        let write = TabItem(imageID: "pencil.circle", selectedImageID: "pencil.circle.fill", title: "새글 등록")
        let mypage = TabItem(imageID: "person.circle", selectedImageID: "person.circle.fill", title: "마이페이지")
        
        return [home, write, mypage]
    }()
    @State private var selectedTabIndex = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTabIndex) {
                ForEach(tabs.indices, id: \.self) { index in
                    let tabItem = tabs[index]
                    
                    Text(tabItem.title)
                        .tag(index)
                }
            }
            
            VStack {
                Spacer()
                TabBottomView(items: tabs, selectedIndex: $selectedTabIndex)
            }
            .padding(.bottom, 8)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingTabView()
    }
}
