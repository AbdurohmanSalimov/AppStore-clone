//
//  ResponseData.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//

import Foundation
import UIKit

class Network {
    static let shared = Network()
    
    func getFeaturedResponseData() -> [Section] {
        let featuredSectionData: [Section] = [
            Section(title: "FEATURES",
                    name: "Amirsoy: Relax on vocations",
                    bannerImage: UIImage(named: "3"),
                    subitle: "Mountains is waiting you",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "AmirSoy"), appName: "Amirsoy", isPurchased: false, appCategory: "Travel")
                    ]
                   ),
            Section(title: "NEW FEATURES",
                    name: "Payme - take it easy!",
                    bannerImage: UIImage(named: "33"),
                    subitle: "Manage your finance",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: true, appCategory: "Finance")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Watch Moovies & Serials with Apple TV",
                    bannerImage: UIImage(named: "22"),
                    subitle: "007 - No time to death",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Entertainment")
                    ]
                   ),
            
            Section(title: "FEATURES",
                    name: "Amirsoy: Relax on vocations",
                    bannerImage: UIImage(named: "3"),
                    subitle: "Mountains is waiting you",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "AmirSoy"), appName: "Amirsoy", isPurchased: false, appCategory: "Travel")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Watch Moovies & Serials with Apple TV",
                    bannerImage: UIImage(named: "22"),
                    subitle: "007 - No time to death",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Entertainment")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Payme - take it easy!",
                    bannerImage: UIImage(named: "33"),
                    subitle: "Manage your finance",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: true, appCategory: "Finance")
                    ]
                   ),
            
        ]
        return featuredSectionData
    }
    
    func getAppsResponseData() -> [Section] {
        let featuredSectionData: [Section] = [
            Section(title: "FEATURES",
                    name: "Amirsoy: Relax on vocations",
                    bannerImage: UIImage(named: "3"),
                    subitle: "Mountains is waiting you",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "AmirSoy"), appName: "Amirsoy", isPurchased: false, appCategory: "Travel")
                    ]
                   ),
            Section(title: "NEW FEATURES",
                    name: "Payme - take it easy!",
                    bannerImage: UIImage(named: "33"),
                    subitle: "Manage your finance",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: true, appCategory: "Finance")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Watch Moovies & Serials with Apple TV",
                    bannerImage: UIImage(named: "22"),
                    subitle: "007 - No time to death",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Entertainment")
                    ]
                   ),
            
            Section(title: "FEATURES",
                    name: "Amirsoy: Relax on vocations",
                    bannerImage: UIImage(named: "3"),
                    subitle: "Mountains is waiting you",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "AmirSoy"), appName: "Amirsoy", isPurchased: false, appCategory: "Travel")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Watch Moovies & Serials with Apple TV",
                    bannerImage: UIImage(named: "22"),
                    subitle: "007 - No time to death",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Entertainment")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Payme - take it easy!",
                    bannerImage: UIImage(named: "33"),
                    subitle: "Manage your finance",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: true, appCategory: "Finance")
                    ]
                   ),
            Section(title: "FEATURES",
                    name: "Amirsoy: Relax on vocations",
                    bannerImage: UIImage(named: "3"),
                    subitle: "Mountains is waiting you",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "AmirSoy"), appName: "Amirsoy", isPurchased: false, appCategory: "Travel")
                    ]
                   ),
            Section(title: "NEW FEATURES",
                    name: "Payme - take it easy!",
                    bannerImage: UIImage(named: "33"),
                    subitle: "Manage your finance",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: true, appCategory: "Finance")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Watch Moovies & Serials with Apple TV",
                    bannerImage: UIImage(named: "22"),
                    subitle: "007 - No time to death",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Entertainment")
                    ]
                   ),
            
            Section(title: "FEATURES",
                    name: "Amirsoy: Relax on vocations",
                    bannerImage: UIImage(named: "3"),
                    subitle: "Mountains is waiting you",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "AmirSoy"), appName: "Amirsoy", isPurchased: false, appCategory: "Travel")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Watch Moovies & Serials with Apple TV",
                    bannerImage: UIImage(named: "22"),
                    subitle: "007 - No time to death",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Entertainment")
                    ]
                   ),
            
            Section(title: "NEW FEATURES",
                    name: "Payme - take it easy!",
                    bannerImage: UIImage(named: "33"),
                    subitle: "Manage your finance",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: true, appCategory: "Finance")
                    ]
                   ),
            
        ]
        return featuredSectionData
    }
}
