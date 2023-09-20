//
//  Colors.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

extension PlenyUI.Theme.Color {
    enum Primary {
        // MARK: - Cases
        case x100
        
        // MARK: - Properties
        var color: Color {
            switch self {
            case .x100:
                return Color(UIColor(named: "Primary")!)
            }
        }
    }
}

extension PlenyUI.Theme.Color {
    enum Grey {
        // MARK: - Cases
        case x100
        case x300
        
        // MARK: - Properties
        var color: Color {
            switch self {
            case .x300:
                return Color(UIColor(named: "Grey300")!)
            case .x100:
                return Color(UIColor(named: "Grey")!)
            }
        }
    }
}
