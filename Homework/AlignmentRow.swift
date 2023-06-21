//
//  AlignmentRow.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/06/21.
//

import SwiftUI

struct AlignmentRow: View {
    @Binding var selectedAlignment: Alignment
    let alignment: Alignment
    
    var isSelected: Bool {
        selectedAlignment == alignment
    }
    
    var body: some View {
        HStack {
            Button {
                selectedAlignment = alignment
            } label: {
                HStack {
                    Text(alignment.text)
                        .foregroundColor(.black)
                    Spacer()
                    if isSelected {
                        Image(systemName: "checkmark")
                    }
                }
            }
        }
    }
}

struct AlignmentRow_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentRow(selectedAlignment: .constant(.bottom), alignment: .center)
    }
}
