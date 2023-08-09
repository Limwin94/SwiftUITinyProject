//
//  ScrollVStackView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/09.
//

import SwiftUI

struct ScrollVStackView: View {
    private var largeModels: [ListModel] {
        var models = [ListModel]()
        for index in 0..<1_000 {
            models.append(ListModel(order: index))
        }
        
        return models
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(largeModels) { model in
                    ListContentView(model: model)
                        .padding(.horizontal, 16)
                }
            }
        }
    }
}

struct ScrollVStackView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollVStackView()
    }
}
