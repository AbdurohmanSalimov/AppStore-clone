//
//  DM.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//

import UIKit

struct App {
    
    let appID: Int?
    let appImage: UIImage?
    let appName: String?
    let isPurchased: Bool?
    let appCategory: String?
}

struct Section {
    let title: String?
    let name: String?
    let bannerImage: UIImage?
    let subitle: String?
    let apps: [App]
}


