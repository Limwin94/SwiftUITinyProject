//
//  FullScreenCoverView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/25.
//

import SwiftUI

struct FullScreenCoverView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Text("닫기")
                }
            }
            .padding(.horizontal, 32)
            
            Spacer()
            
            Text("내용")
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}

struct FullScreenCoverView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCoverView()
    }
}
