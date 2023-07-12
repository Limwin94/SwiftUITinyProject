//
//  AppStoreContentView.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/07/12.
//

import SwiftUI

struct AppStoreContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.green)
                VStack {
                    Spacer()
                    contentPreview
                }
            }
            .aspectRatio(1.0, contentMode: .fit)
        }
        .navigationTitle("AppStoreContentView")
    }
    
    private var contentPreview: some View {
        VStack {
            Color.clear
                .blur(radius: 20)
            HStack {
                squareRectangle.foregroundColor(.primary)
                squareRectangle.foregroundColor(.blue)
                squareRectangle.foregroundColor(.cyan)
                squareRectangle.foregroundColor(.indigo)
            }
            .padding(16)
        }

    }
    
    private var squareRectangle: some View {
        RoundedRectangle(cornerRadius: 12)
            .aspectRatio(1.0, contentMode: .fit)
    }
}

struct AppStoreContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreContentView()
    }
}
