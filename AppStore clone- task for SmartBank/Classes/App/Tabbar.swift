//
//  Tabbar.swift
//  AppStore clone- task for SmartBank
//
//  Created by A. Salimov on 06/07/23.
//

import UIKit

class TabBar: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
       
        setupVCs()
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
    
    override func viewDidLayoutSubviews() {
        UITabBar.appearance().barTintColor = .systemBackground
        UITabBar.appearance().tintColor = .systemBlue

        tabBar.backgroundColor = UIColor.systemBackground
        tabBar.clipsToBounds = false
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.7913870215, green: 0.7771956921, blue: 0.753970027, alpha: 1)
    }
    
    func setupVCs() {
       
        viewControllers = [
            createNavController(for: TodayVC() ,
                                title: "Today",
                                image: UIImage(systemName: "doc.richtext.ar")!),
            
            createNavController(for: GamesVC(),
                                title:"Games" ,
                                image: UIImage(named: "rocket")!),
            
            createNavController(for: AppsRouter.createModule() ,
                                title: "Apps",
                                image: UIImage(systemName: "square.stack.3d.up.fill")!),
            
            createNavController(for: GamesVC(),
                                title:"Arcade" ,
                                image: UIImage(named: "controller")!),
            
            createNavController(for: GamesVC(),
                                title: "Search",
                                image: UIImage(systemName: "magnifyingglass")!),
            
        ]
       

    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        UINavigationBar.appearance().tintColor = .blue
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
  
    
}
