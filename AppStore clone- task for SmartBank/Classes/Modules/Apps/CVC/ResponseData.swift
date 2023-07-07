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
    
    func getFeaturedResponseData() -> [Section]? {
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
    
    func getAppsResponseData() -> [Section]? {
        let featuredSectionData: [Section] = [
            Section(title: "This Week`s Favourites",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "yandexMAp"), appName: "Yandex map", isPurchased: true, appCategory: "Map"),
                        App(appID: 1, appImage: UIImage(named: "yandexTaxi"), appName: "Yandex Taxi", isPurchased: false, appCategory: "Travel"),
                        App(appID: 1, appImage: UIImage(named: "vk"), appName: "VK", isPurchased: true, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "agrobank"), appName: "Agrobank Mobile", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        App(appID: 1, appImage: UIImage(named: "alif"), appName: "Alif - shop", isPurchased: true, appCategory: "Finance & Shop"),
                       
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "uzum"), appName: "Uzum bank", isPurchased: false, appCategory: "Finance & Shop"),
                      
                    ]
                   ),
            Section(title: "Top free",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Moove"),
                       
                        App(appID: 1, appImage: UIImage(named: "ranner"), appName: "Ranner", isPurchased: false, appCategory: "Sport"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "gogle"), appName: "Google", isPurchased: false, appCategory: "Internet"),
                        App(appID: 1, appImage: UIImage(named: "yandexMAp"), appName: "Yandex map", isPurchased: true, appCategory: "Map"),
                        App(appID: 1, appImage: UIImage(named: "yandexTaxi"), appName: "Yandex Taxi", isPurchased: false, appCategory: "Travel"),
                        App(appID: 1, appImage: UIImage(named: "vk"), appName: "VK", isPurchased: true, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "Ivi"), appName: "ivi", isPurchased: false, appCategory: "Moove"),
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        
                      
                    ]
                   ),
            
            Section(title: "Top paid",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "miro"), appName: "Miro", isPurchased: true, appCategory: "Business"),
                        App(appID: 1, appImage: UIImage(named: "amazon"), appName: "Amazon", isPurchased: true, appCategory: "Map"),
                        App(appID: 1, appImage: UIImage(named: "AmirSoy"), appName: "AmirSoy", isPurchased: false, appCategory: "Travel"),
                        App(appID: 1, appImage: UIImage(named: "vk"), appName: "VK", isPurchased: true, appCategory: "Massanger"),
                       
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Moove"),
                       
                        App(appID: 1, appImage: UIImage(named: "chrome"), appName: "Chrome", isPurchased: false, appCategory: "Internet"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "agrobank"), appName: "Agrobank Mobile", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        
                        App(appID: 1, appImage: UIImage(named: "uzum"), appName: "Uzum bank", isPurchased: false, appCategory: "Finance & Shop"),
                      
                    ]
                   ),
            
            Section(title: "Best sellers in this week",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        App(appID: 1, appImage: UIImage(named: "agrobank"), appName: "Agrobank Mobile", isPurchased: false, appCategory: "Finance"),
                        
                        App(appID: 1, appImage: UIImage(named: "alif"), appName: "Alif - shop", isPurchased: true, appCategory: "Finance & Shop"),
                       
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "uzum"), appName: "Uzum bank", isPurchased: false, appCategory: "Finance & Shop"),
                      
                    ]
                   ),
            
            Section(title: "Work Better Together",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "vk"), appName: "VK", isPurchased: true, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "Ivi"), appName: "ivi", isPurchased: false, appCategory: "Moove"),
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Moove"),
                        App(appID: 1, appImage: UIImage(named: "ranner"), appName: "Ranner", isPurchased: false, appCategory: "Sport"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "gogle"), appName: "Google", isPurchased: false, appCategory: "Internet"),
                        App(appID: 1, appImage: UIImage(named: "yandexMAp"), appName: "Yandex map", isPurchased: true, appCategory: "Map"),
                        App(appID: 1, appImage: UIImage(named: "yandexTaxi"), appName: "Yandex Taxi", isPurchased: false, appCategory: "Travel"),
                        
                        
                      
                    ]
                   ),
            
            Section(title: "Cardio Trainers",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "ranner"), appName: "Ranner", isPurchased: false, appCategory: "Sport"),
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "uzum"), appName: "Uzum bank", isPurchased: false, appCategory: "Finance & Shop"),
                        App(appID: 1, appImage: UIImage(named: "yandexMAp"), appName: "Yandex map", isPurchased: true, appCategory: "Map"),
                        App(appID: 1, appImage: UIImage(named: "yandexTaxi"), appName: "Yandex Taxi", isPurchased: false, appCategory: "Travel"),
                        App(appID: 1, appImage: UIImage(named: "vk"), appName: "VK", isPurchased: true, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "agrobank"), appName: "Agrobank Mobile", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        App(appID: 1, appImage: UIImage(named: "alif"), appName: "Alif - shop", isPurchased: true, appCategory: "Finance & Shop"),
                       
                       
                      
                    ]
                   ),
            Section(title: "ios 16 ",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "agrobank"), appName: "Agrobank Mobile", isPurchased: false, appCategory: "Finance"),
                        
                        App(appID: 1, appImage: UIImage(named: "alif"), appName: "Alif - shop", isPurchased: true, appCategory: "Finance & Shop"),
                       
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        App(appID: 1, appImage: UIImage(named: "agrobank"), appName: "Agrobank Mobile", isPurchased: false, appCategory: "Finance"),
                        
                        App(appID: 1, appImage: UIImage(named: "alif"), appName: "Alif - shop", isPurchased: true, appCategory: "Finance & Shop"),
                       
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "uzum"), appName: "Uzum bank", isPurchased: false, appCategory: "Finance & Shop"),
                      
                    ]
                   ),
            Section(title: "Best sellers in this week",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        App(appID: 1, appImage: UIImage(named: "agrobank"), appName: "Agrobank Mobile", isPurchased: false, appCategory: "Finance"),
                        
                        App(appID: 1, appImage: UIImage(named: "alif"), appName: "Alif - shop", isPurchased: true, appCategory: "Finance & Shop"),
                       
                        App(appID: 1, appImage: UIImage(named: "payme"), appName: "Payme", isPurchased: false, appCategory: "Finance"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "uzum"), appName: "Uzum bank", isPurchased: false, appCategory: "Finance & Shop"),
                      
                    ]
                   ),
            
            Section(title: "Work Better Together",
                    name: "",
                    bannerImage: UIImage(),
                    subitle: "",
                    apps: [
                        App(appID: 1, appImage: UIImage(named: "vk"), appName: "VK", isPurchased: true, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "Ivi"), appName: "ivi", isPurchased: false, appCategory: "Moove"),
                        App(appID: 1, appImage: UIImage(named: "express24"), appName: "Express24", isPurchased: true, appCategory: "Food delivery"),
                        App(appID: 1, appImage: UIImage(named: "appleTV"), appName: "Apple TV", isPurchased: true, appCategory: "Moove"),
                        App(appID: 1, appImage: UIImage(named: "ranner"), appName: "Ranner", isPurchased: false, appCategory: "Sport"),
                        App(appID: 1, appImage: UIImage(named: "telegram"), appName: "Telegram", isPurchased: false, appCategory: "Massanger"),
                        App(appID: 1, appImage: UIImage(named: "gogle"), appName: "Google", isPurchased: false, appCategory: "Internet"),
                        App(appID: 1, appImage: UIImage(named: "yandexMAp"), appName: "Yandex map", isPurchased: true, appCategory: "Map"),
                        App(appID: 1, appImage: UIImage(named: "yandexTaxi"), appName: "Yandex Taxi", isPurchased: false, appCategory: "Travel"),
                        
                        
                      
                    ]
                   )
        ]
        return featuredSectionData
    }
    
    func getAppCategoriesResponseData() -> [AppCategories]? {
        let appCategories: [AppCategories] = [
            AppCategories(name: "Apple Watch Apps", bannerImage: UIImage(systemName: "applewatch")?.withTintColor(.systemBlue)),
            AppCategories(name: "Photo & Video", bannerImage: UIImage(systemName: "camera")?.withTintColor(.systemGray3)),
            AppCategories(name: "Games", bannerImage: UIImage(systemName: "gamecontroller.fill")?.withTintColor(.systemGray3)),
            AppCategories(name: "Safari Extenstions", bannerImage: UIImage(systemName: "safari")?.withTintColor(.systemBlue)),
            AppCategories(name: "Social Network", bannerImage: UIImage(systemName: "person")?.withTintColor(.systemBlue))
        ]
        return appCategories
    }
}
