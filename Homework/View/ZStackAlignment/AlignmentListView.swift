//
//  AlignmentListView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/06/20.
//

import SwiftUI

struct AlignmentListView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedAlignment: Alignment
    
    private let alignments: [Alignment] = [.center, .leading, .trailing, .top, .bottom, .topLeading, .topTrailing, .bottomTrailing, .bottomLeading]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<alignments.count, id: \.self) { index in
                    let currentAlignment = alignments[index]
                    AlignmentRow(selectedAlignment: $selectedAlignment, alignment: currentAlignment)
                }
            }
            .navigationBarTitle(Text("select alignment"), displayMode: .inline)
            .navigationBarItems(trailing: Button("확인", action: {
                dismiss()
            }))
        }
    }
}

struct AlignmentListView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentListView(selectedAlignment: .constant(.center))
    }
}
