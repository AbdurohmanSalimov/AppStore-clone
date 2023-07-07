//
//  AppsVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//

import Foundation

class AppsPresenter: ViewToPresenterAppsProtocol {

    // MARK: Properties
    weak var view: PresenterToViewAppsProtocol?
    var interactor: PresenterToInteractorAppsProtocol?
    var router: PresenterToRouterAppsProtocol?
    var feturedDataResponse: [Section] = Network.shared.getFeaturedResponseData()
    var appsDataResponse: [Section] = Network.shared.getAppsResponseData()
    
    
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
