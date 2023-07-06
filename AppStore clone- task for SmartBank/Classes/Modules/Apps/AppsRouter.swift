//
//  AppsRouter.swift
//  AppStore clone- task for SmartBank
//
//  Created by Avazbek on 06/07/23.
//  Copyright © 2023 Olimov Avazbek Developer. All rights reserved.
//

import Foundation
import UIKit

class AppsRouter {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = AppsViewController()
        
        let presenter: ViewToPresenterAppsProtocol & InteractorToPresenterAppsProtocol = AppsPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = AppsRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = AppsInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}

extension AppsRouter: PresenterToRouterAppsProtocol {
    
}
