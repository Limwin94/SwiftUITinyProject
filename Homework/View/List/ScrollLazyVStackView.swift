//
//  ScrollLazyVStackView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/09.
//

import SwiftUI

struct ScrollLazyVStackView: View {
    private var largeModels: [ListModel] {
        var models = [ListModel]()
        for index in 0..<1_000 {
            models.append(ListModel(order: index))
        }
        
        return models
    }
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(largeModels) { model in
                    ListContentView(model: model)
                        .padding(.horizontal, 16)
                }
            }
        }
    }
}

struct ScrollLazyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollLazyVStackView()
    }
}
