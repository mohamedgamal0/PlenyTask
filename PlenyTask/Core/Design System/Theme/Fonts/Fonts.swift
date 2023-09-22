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

extension PlenyUI.Theme.Typography {
    enum HeadLines {
        // MARK: - Cases
        case semibold
        
        // MARK: - Properties
        var font: Font {
            switch self {
            case .semibold:
                return Font.system(size: 17).weight(.semibold)
            }
        }
    }
}


extension PlenyUI.Theme.Typography {
    enum Footnote {
        // MARK: - Cases
        case regular
        
        // MARK: - Properties
        var font: Font {
            switch self {
            case .regular:
                return Font.system(size: 13)
            }
        }
    }
}

extension PlenyUI.Theme.Typography {
    enum Body {
        // MARK: - Cases
        case regular
        
        // MARK: - Properties
        var font: Font {
            switch self {
            case .regular:
                return Font.system(size: 17)
            }
        }
    }
}

