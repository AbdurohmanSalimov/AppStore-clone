//
//  AppsVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//


import Foundation
import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewAppsProtocol: AnyObject {
    func  createUIElements()
    func handleViewWillAppear()
    func handleViewWillDisappear()
    func updateUI()
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterAppsProtocol: AnyObject {
    
    var view: PresenterToViewAppsProtocol? { get set }
    var interactor: PresenterToInteractorAppsProtocol? { get set }
    var router: PresenterToRouterAppsProtocol? { get set }
    var feturedDataResponse: [Section]? { get set }
    var appsDataResponse: [Section]? { get set }
    var appCategories: [AppCategories]? {get set}
    var qucikList: [String]? {get set}
    var lastSection: Int? {get set}
    
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
    
    func didSelectItem(at: IndexPath)
    func getTotalNumberOfSection() -> Int
    func getFeaturedCategoryNumberOfItems() -> Int
    func getAppCategoryNumberOfItems() -> Int
    func getAppNumberOfItems(atSection: Int) -> Int
    func getQucikListNumberOfItems() -> Int
    func seeAll(at: IndexPath)
    func refresh()

}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorAppsProtocol: AnyObject {
    
    var presenter: InteractorToPresenterAppsProtocol? { get set }
    var feturedDataResponse: [Section]? { get set }
    var appsDataResponse: [Section]? { get set }
    var appCategories: [AppCategories]? {get set}
    var qucikList: [String]? {get set}
    var isDataAllCame: Bool? { get set }
    
    func getAppStoreDataFromServer()
 
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterAppsProtocol: AnyObject {
    func succesInGetingData(featuredApps: [Section], apps: [Section], appCategories: [AppCategories], quickList: [String])
    func failureInGettingData()
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterAppsProtocol: AnyObject {
    static func createModule() -> UIViewController
}
