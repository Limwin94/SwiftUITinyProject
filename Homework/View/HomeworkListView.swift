//
//  HomeworkListView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/06/28.
//

import SwiftUI

struct HomeworkListView: View {
   
  var body: some View {
    NavigationView {
      List(Homeworks.list) { item in
        NavigationLink(item.title) { item.view() }
      }
      .navigationTitle("HomeWorks")
    }
  }
}

struct Homework: Identifiable {
    let title: String
    var id: String { title }
    var view: () -> AnyView
}

struct Homeworks {
    static let list: [Homework] = [
        .init(title: "Z Stack", view: { AnyView(ZStackContentView()) }),
        .init(title: "H Stack", view: { AnyView(HStackContentView()) })
    ]
}

struct HomeworkListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkListView()
    }
}
