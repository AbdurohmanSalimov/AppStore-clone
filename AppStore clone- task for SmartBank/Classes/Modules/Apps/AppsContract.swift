//
//  AppsContract.swift
//  AppStore clone- task for SmartBank
//
//  Created by Avazbek on 06/07/23.
//  Copyright © 2023 Olimov Avazbek Developer. All rights reserved.
//

import Foundation
import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewAppsProtocol: AnyObject {
    func  createUIElements()
    func handleViewWillAppear()
    func handleViewWillDisappear()
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterAppsProtocol: AnyObject {
    
    var view: PresenterToViewAppsProtocol? { get set }
    var interactor: PresenterToInteractorAppsProtocol? { get set }
    var router: PresenterToRouterAppsProtocol? { get set }
    
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorAppsProtocol: AnyObject {
    
    var presenter: InteractorToPresenterAppsProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterAppsProtocol: AnyObject {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterAppsProtocol: AnyObject {
    static func createModule() -> UIViewController
}
