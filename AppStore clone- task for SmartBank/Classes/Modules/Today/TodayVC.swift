//
//  TodayVC.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//

import UIKit

class TodayVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if traitCollection.userInterfaceStyle == .light {
              print("Light mode")
            UserDefaults.standard.set(true, forKey: "isLight")
          } else {
              print("Dark mode")
              UserDefaults.standard.set(false, forKey: "isLight")
              
          }
    }
}
