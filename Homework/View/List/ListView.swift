//
//  ListView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/07/12.
//

import SwiftUI

struct ListModel: Identifiable {
    let id = UUID()
    let order: Int
}

struct ListView: View {
    
    private var models: [ListModel] = [
        ListModel(order: 0),
        ListModel(order: 1),
        ListModel(order: 2),
        ListModel(order: 3),
        ListModel(order: 4),
        ListModel(order: 5),
        ListModel(order: 6),
    ]
    
    var body: some View {
        List(models) { model in
            NavigationLink {
                ListContentView(model: model)
            } label: {
                Text("\(model.order)")
            }
        }
        .navigationTitle("List")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
