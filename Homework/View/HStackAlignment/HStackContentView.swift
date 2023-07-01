//
//  HStackContentView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/06/28.
//

import SwiftUI

struct HStackContentView: View {
    @State private var hStackAlignment: VerticalAlignment = .center
    @State private var isAnimating = false
    
    var body: some View {
        HStack {
            VStack {
                makeVerticalAlignmentButton(.top)
                Spacer()
                makeVerticalAlignmentButton(.center)
                Spacer()
                makeVerticalAlignmentButton(.bottom)
            }
            .aspectRatio(contentMode: .fit)
            
            ZStack {
                VStack {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.gray.opacity(0.4), lineWidth: 4)
                        .background(.clear)
                        .aspectRatio(1, contentMode: .fit)
                        .padding(.horizontal, 10)
                    
                }
                HStack(alignment: hStackAlignment, spacing: 20) {
                    makeRoundedRectangle(color: .purple, aspectRatio: 0.3)
                    makeRoundedRectangle(color: .blue, aspectRatio: 0.6)
                    makeRoundedRectangle(color: .cyan, aspectRatio: 0.4)
                }
                .animation(.easeInOut, value: isAnimating)
                .padding(.horizontal, 25)
            }
        }
        .padding(.horizontal, 10)
    }
    
    private func makeVerticalAlignmentButton(_ alignment: VerticalAlignment) -> some View {
        Button {
            hStackAlignment = alignment
            isAnimating = true
            withAnimation {
                isAnimating = false
            }
        } label: {
            Text(alignment.text)
                .font(.body)
        }
    }
    
    private func makeRoundedRectangle(color: Color, aspectRatio: CGFloat) -> some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(color.opacity(0.3))
            .aspectRatio(aspectRatio, contentMode: .fit)
    }
}

struct HStackAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        HStackContentView()
    }
}
