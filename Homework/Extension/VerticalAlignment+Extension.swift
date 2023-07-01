//
//  VerticalAlignment+Extension.swift
//  Homework
//
//  Created by seunghyeok lim on 2023/06/29.
//

import SwiftUI

extension VerticalAlignment {
    var text: String {
        switch self {
        case .top:
            return ".top"
        case .center:
            return ".center"
        case .bottom:
            return ".bottom"
        default:
            return String(describing: self)
        }
    }
}
