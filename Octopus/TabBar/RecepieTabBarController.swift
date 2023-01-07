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
            let item1 = IngredientsViewController()
            item1.recepie = self.recepie
            let icon1 = UITabBarItem(title: "Ingredients", image: UIImage(systemName: "star.fill"), selectedImage: UIImage(named: "chevron"))
            item1.tabBarItem = icon1
            
            let item2 = CookingViewController()
            item2.recepie = self.recepie
            let icon2 = UITabBarItem(title: "Cooking", image: UIImage(systemName: "star.fill"), selectedImage: UIImage(named: "chevron"))
            item2.tabBarItem = icon2
            
            let controllers = [item2, item1]
            self.viewControllers = controllers
        }

        //Delegate methods
        func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            print("Should select viewController: \(viewController.title ?? "") ?")
            return true
        }
    


}
