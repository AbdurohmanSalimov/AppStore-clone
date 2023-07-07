//
//  ClassIdentifiable.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 07/07/23.
//

import Foundation

protocol ClassIdentifiable {
    static var reuseId: String { get }
}

extension ClassIdentifiable {

    static var reuseId: String {
        return String(describing: self)
    }

}
