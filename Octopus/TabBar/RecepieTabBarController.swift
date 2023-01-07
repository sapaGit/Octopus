//
//  RecepieTabBarController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class RecepieTabBarController: UITabBarController, UITabBarControllerDelegate {

    var recepie: Recepie!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            delegate = self
        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            let info = InfoViewController()
            info.recepie = self.recepie
            let icon1 = UITabBarItem(title: "Info", image: UIImage(systemName: "star.fill"), selectedImage: UIImage(named: "star.fill"))
            info.tabBarItem = icon1
            
            let ingredients = IngredientsViewController()
            ingredients.recepie = self.recepie
            let icon2 = UITabBarItem(title: "Ingredients", image: UIImage(systemName: "star.fill"), selectedImage: UIImage(named: "star.fill"))
            ingredients.tabBarItem = icon2
            
            let cooking = CookingViewController()
            cooking.recepie = self.recepie
            let icon3 = UITabBarItem(title: "Cooking", image: UIImage(systemName: "star.fill"), selectedImage: UIImage(named: "star.fill"))
            cooking.tabBarItem = icon3
            
            let controllers = [info, ingredients, cooking]
            self.viewControllers = controllers
        }

        //Delegate methods
        func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            print("Should select viewController: \(viewController.title ?? "") ?")
            return true
        }
    


}
