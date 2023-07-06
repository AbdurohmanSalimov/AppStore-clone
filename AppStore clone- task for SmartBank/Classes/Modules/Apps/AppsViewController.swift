//
//  AppsViewController.swift
//  AppStore clone- task for SmartBank
//
//  Created by Avazbek on 06/07/23.
//  Copyright © 2023 Olimov Avazbek Developer. All rights reserved.
//

import UIKit

class AppsViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        self.view.backgroundColor = .blue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presenter?.viewWillDisappear()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterAppsProtocol?
    
}

extension AppsViewController: PresenterToViewAppsProtocol{
    // TODO: Implement View Output Methods
    
    func handleViewWillAppear() {
    }
    
    func handleViewWillDisappear() {
    }
}

// MARK: - UI Setup
extension AppsViewController {
    func createUIElements() {
        overrideUserInterfaceStyle = .light
        
    }
}
