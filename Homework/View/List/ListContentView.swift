//
//  ListContentView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/09.
//

import SwiftUI

struct ListContentView: View {
    var model: ListModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .shadow(radius: 3)
                .frame(height: 100)
            
            Text("\(model.id)")
                .multilineTextAlignment(.center)
                .padding(.all, 16)
        }
        .padding(.horizontal, 16)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ListContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListContentView(model: .init(order: 0))
    }
}
