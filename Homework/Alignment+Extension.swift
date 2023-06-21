//
//  Alignment+Extension.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/06/21.
//

import SwiftUI

extension Alignment {
    var text: String {
        switch self {
        case .center:
            return ".center"
        case .leading:
            return ".leading"
        case .trailing:
            return ".trailing"
        case .top:
            return ".top"
        case .bottom:
            return ".bottom"
        case .topLeading:
            return ".topLeading"
        case .topTrailing:
            return ".topTrailing"
        case .bottomTrailing:
            return ".bottomTrailing"
        case .bottomLeading:
            return ".bottomLeading"
        default:
            return String(describing: self)
        }
    }
}
