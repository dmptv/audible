//
//  HomeController.swift
//  Audible
//
//  Created by Kanat A on 11/03/2017.
//  Copyright © 2017 ak. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "We're logged in"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sing Out", style: .plain, target: self, action: #selector(handleSingOut))
        
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
    func handleSingOut() {
        UserDefaults.standard.setIsLoggedIn(value: false)  
  
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}
