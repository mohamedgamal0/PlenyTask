//
//  Fonts.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

extension PlenyUI.Theme.Typography {
    enum Title {
        // MARK: - Cases
        case bold
        
        // MARK: - Properties
        var font: Font {
            switch self {
            case .bold:
                return Font.system(size: 20).weight(.bold)            }
        }
    }
}

extension PlenyUI.Theme.Typography {
    enum SubHeadLines {
        // MARK: - Cases
        case semibold
        
        // MARK: - Properties
        var font: Font {
            switch self {
            case .semibold:
                return Font.system(size: 15).weight(.semibold)
            }
        }
    }
}

