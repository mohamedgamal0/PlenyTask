//
//  DesignSystem.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

struct DesignSystem {
    struct Fonts {
        static let title3 = Font.system(size: 20).weight(.bold)
        static let subHeadLine = Font.system(size: 15).weight(.semibold)
    }
    
    struct Colors {
        static let primary = Color(UIColor(named: "Primary")!)
        static let grey = Color(UIColor(named: "Grey")!)
    }
}
