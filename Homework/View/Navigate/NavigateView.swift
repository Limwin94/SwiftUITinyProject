//
//  NavigateView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/08/25.
//

import SwiftUI

struct NavigateView: View {
    @State private var isPresented = false
    
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            Text("Present Modal")
        }
        .fullScreenCover(isPresented: $isPresented) {
            FullScreenCoverView()
        }
    }
}

struct NavigateView_Previews: PreviewProvider {
    static var previews: some View {
        NavigateView()
    }
}
