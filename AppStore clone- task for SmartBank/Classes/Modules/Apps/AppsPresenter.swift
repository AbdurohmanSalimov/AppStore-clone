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
    var feturedDataResponse: [Section]?
    var appsDataResponse: [Section]?
    var appCategories: [AppCategories]?
    var lastSection: Int?
    
    // MARK: Inputs from view
    func viewDidLoad() {
        self.interactor?.getAppStoreDataFromServer()
        view?.createUIElements()
           
     
    }
    
    func viewWillAppear() {
        view?.handleViewWillAppear()
    }
    
    func viewWillDisappear() {
        view?.handleViewWillDisappear()
    }
    
  
    func seeAll(at: IndexPath) {
        print("See all - at section-\(at.section)" )
    }
    // Colection view methods
    func didSelectItem(at: IndexPath) {
        print("SELECTED section-\(at.section) row-\(at.row)")
    }
    
    func getTotalNumberOfSection() -> Int {
        var sections: Int = (appsDataResponse?.count ?? 0) + 2
        print("🥶 sections-",sections)
        lastSection = sections
        return sections
    }
    
    func getAppNumberOfItems(atSection: Int) -> Int {
        let items: Int = appsDataResponse?[atSection - 1].apps.count ?? 0
        return items
    }
    
    func getAppCategoryNumberOfItems() -> Int {
        let items: Int = appCategories?.count ?? 0
        
        return items
    }
    
    func getFeaturedCategoryNumberOfItems() -> Int {
        let items: Int = feturedDataResponse?.count ?? 0
        
        return items
    }
    
    
    func refresh() {
            self.interactor?.getAppStoreDataFromServer()
    }
}

// MARK: - Outputs to view
extension AppsPresenter: InteractorToPresenterAppsProtocol {
    func succesInGetingData(featuredApps: [Section], apps: [Section], appCategories: [AppCategories]) {
        self.appCategories = appCategories
        self.feturedDataResponse = featuredApps
        self.appsDataResponse = apps
        print(" ☪️☪️☪️☪️☪️☪️ count-",apps.count)
        view?.updateUI()
        
    }
    
    func failureInGettingData() {
        print("Error in getting data")
    }
   
    
    
}
