//
//  MainNavigationController.swift
//  Audible
//
//  Created by Kanat A on 11/03/2017.
//  Copyright © 2017 ak. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if isLoggedIn() {
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.1)
        }
     }
    
    fileprivate func isLoggedIn() -> Bool {
        
        return UserDefaults.standard.isLoggedIn()
    }

    func showLoginController() {
        let loginController  = LoginController()
        present(loginController, animated: true, completion: {
            //
        })
    }
}


















