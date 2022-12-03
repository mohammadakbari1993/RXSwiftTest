//
//  Coordinators.ViewController.swift
//  RXSwiftTest
//
//  Created by Bahman on 12/3/22.
//

import UIKit


extension Coordinators {
    
    class ViewController : BaseCoordinator {

        private let window : UIWindow
        
        init(window: UIWindow) {
            self.window = window
        }
        
        func start() {
            let viewController = ViewController()
            let navigationController = UINavigationController(rootViewController: viewController)
            self.window.rootViewController = navigationController
            self.window.makeKeyAndVisible()
        }
        
    }
    
}
