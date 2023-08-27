//
//  TabItemView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/27.
//

import SwiftUI

struct TabItemView: View {
    let item: TabItem
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: isSelected ? item.selectedImageID : item.imageID)
                .frame(width: 24, height: 24)
            
            Spacer()
                .frame(height: 3)
            
            Text(item.title)
                .frame(width: 40)
                .font(Font.custom("Apple SD Gothic Neo", size: 9))
                .multilineTextAlignment(.center)
        }
        .padding(.top, 7)
        .padding(.bottom, 5)
        .padding(.horizontal, 12)
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(item: .init(imageID: "house", selectedImageID: "house.fill", title: "홈"), isSelected: true)
    }
}
