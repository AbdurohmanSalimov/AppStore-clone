//
//  AppsPresenter.swift
//  AppStore clone- task for SmartBank
//
//  Created by Avazbek on 06/07/23.
//  Copyright © 2023 Olimov Avazbek Developer. All rights reserved.
//

import Foundation

class AppsPresenter: ViewToPresenterAppsProtocol {

    // MARK: Properties
    weak var view: PresenterToViewAppsProtocol?
    var interactor: PresenterToInteractorAppsProtocol?
    var router: PresenterToRouterAppsProtocol?
    
    // MARK: Inputs from view
    func viewDidLoad() {
        view?.createUIElements()
    }
    
    func viewWillAppear() {
        view?.handleViewWillAppear()
    }
    
    func viewWillDisappear() {
        view?.handleViewWillDisappear()
    }
}

// MARK: - Outputs to view
extension AppsPresenter: InteractorToPresenterAppsProtocol {
    
}
