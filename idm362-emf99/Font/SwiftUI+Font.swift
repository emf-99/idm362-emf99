//
//  SwiftUI+Font.swift
//  idm362-emf99
//
//  Created by ella fromherz on 1/30/25.
//

import SwiftUI

extension Font {
    static func rethink(fontStyle: Font.TextStyle = .body) -> Font {
        return Font.custom("RethinkSans-Medium", size: fontStyle.size)
    }
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 34
        case .title: return 30
        case .title2: return 22
        case .title3: return 20
        case .headline: return 18
        case .body: return 16
        case .caption: return 10
        case .caption2: return 8
        default: return 8
        }
    }
    
}
