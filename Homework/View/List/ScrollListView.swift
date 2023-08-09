//
//  ScrollListView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/09.
//

import SwiftUI

struct ScrollListView: View {
    
    private var largeModels: [ListModel] {
        var models = [ListModel]()
        for index in 0..<1_000 {
            models.append(ListModel(order: index))
        }
        
        return models
    }
    
    var body: some View {
        List(largeModels) { model in
            NavigationLink {
                ListContentView(model: model)
            } label: {
                Text("\(model.order)")
            }
        }
        .navigationTitle("List")
    }
}

struct ScrollListView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollListView()
    }
}
