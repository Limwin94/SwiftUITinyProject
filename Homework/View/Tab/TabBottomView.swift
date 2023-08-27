//
//  TabBottomView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/27.
//

import SwiftUI

struct TabBottomView: View {
    let items: [TabItem]
    private let width: CGFloat = UIScreen.main.bounds.width - 104
    private let height: CGFloat = 64
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        HStack {
            Spacer()
            
            ForEach(items.indices, id: \.self) { index in
                let item = items[index]
                
                Button {
                    selectedIndex = index
                } label: {
                    let isSelected = selectedIndex == index
                    TabItemView(item: item, isSelected: isSelected)
                }
                
                Spacer()
            }
        }
        .frame(width: width, height: height)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 60))
    }
}

struct TabBottomView_Previews: PreviewProvider {
    static var previews: some View {
        let home = TabItem(imageID: "house", selectedImageID: "house.fill", title: "홈")
        let write = TabItem(imageID: "pencil.circle", selectedImageID: "pencil.circle.fill", title: "새글 등록")
        let mypage = TabItem(imageID: "person.circle", selectedImageID: "person.circle.fill", title: "마이페이지")
        
        TabBottomView(items: [home, write, mypage], selectedIndex: .constant(1))
    }
}
