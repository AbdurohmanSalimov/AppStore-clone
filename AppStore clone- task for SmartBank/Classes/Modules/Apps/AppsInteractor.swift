//
//  AppsVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//

import Foundation

class AppsInteractor: PresenterToInteractorAppsProtocol {
    
    var appCategories: [AppCategories]?
    var feturedDataResponse: [Section]?
    var appsDataResponse: [Section]?
    var isDataAllCame: Bool?

    // MARK: Properties
    weak var presenter: InteractorToPresenterAppsProtocol?
    
    func getFeaturedApps() -> Bool {
        if let data = Network.shared.getFeaturedResponseData() {
            feturedDataResponse = data
            return true
        } else {
            return false
        }
    }
    
    func getApps() -> Bool {
        if let data = Network.shared.getAppsResponseData() {
            appsDataResponse = data
            return true
        } else {
            return false
        }
    }
    
    
    func getAppCategories() -> Bool {
        if let data = Network.shared.getAppCategoriesResponseData() {
            appCategories = data
            return true
        } else {
            return false
        }
    }
    
    func getAppStoreDataFromServer() {
        let featured = getFeaturedApps()
        let apps = getApps()
        let appCategorie = getAppCategories()
        
        print("🥶 featured-",featured, "  apps-",apps,"  categories-",appCategorie)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: { [self] in
            isDataAllCame = featured && apps &&  appCategorie
            if isDataAllCame ?? false {
                presenter?.succesInGetingData(featuredApps: feturedDataResponse!, apps: appsDataResponse!, appCategories: appCategories!)
            } else {
                presenter?.failureInGettingData()
            }
        })
       
    }
    
    
}
