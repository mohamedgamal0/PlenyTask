//
//  HomeViewModel.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    
    private let appCoordinator: AppCoordinator
    
    init(appCoordinator: AppCoordinator) {
        self.appCoordinator = appCoordinator
    }

}
