//
//  ZStackContentView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/06/28.
//

import SwiftUI

struct ZStackContentView: View {
    private let colors: [Color] = [.purple, .indigo, .cyan]
    private let initWidth: CGFloat = 200
    private let initHeight: CGFloat = 200
    
    @State private var selectedAlignment: Alignment = .center
    @State private var isShowAlignmentList = false
    
    var body: some View {
        VStack {
            Button {
                isShowAlignmentList.toggle()
            } label: {
                Text("Change Alignment")
                    .font(.title3)
            }
            .sheet(isPresented: $isShowAlignmentList) {
                AlignmentListView(selectedAlignment: $selectedAlignment)
            }
            .padding(.bottom, 50)
            
            Text(selectedAlignment.text)
            
            ZStack(alignment: selectedAlignment) {
                ForEach(0..<colors.count, id: \.self) { index in
                    let decreaseValue = 50
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(colors[index])
                        .frame(
                            width: initWidth - CGFloat((decreaseValue * index)),
                            height: initHeight - CGFloat(decreaseValue * index))
                }
            }
        }
    }
}

struct AlignmentContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackContentView()
    }
}
