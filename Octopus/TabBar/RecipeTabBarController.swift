//
//  RecepieTabBarController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class RecepieTabBarController: UITabBarController, UITabBarControllerDelegate {

    var recepie: Recipe!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            delegate = self
        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            let info = InfoViewController()
            info.recepie = self.recepie
            let icon1 = UITabBarItem(title: "Info", image: UIImage(systemName: "star"), selectedImage: UIImage(named: "star.fill"))
            info.tabBarItem = icon1
            
            let ingredients = IngredientsViewController()
            ingredients.recepie = self.recepie
            let icon2 = UITabBarItem(title: "Ingredients", image: UIImage(systemName: "cart"), selectedImage: UIImage(systemName: "basket"))
            ingredients.tabBarItem = icon2
            
            let cooking = CookingViewController()
            cooking.recepie = self.recepie
            let icon3 = UITabBarItem(title: "Cooking", image: UIImage(systemName: "fork.knife"), selectedImage: UIImage(systemName: "fork.knife"))
            cooking.tabBarItem = icon3
            
            let author = AuthorViewController()
            author.recepie = self.recepie
            let icon4 = UITabBarItem(title: "Author", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person"))
            author.tabBarItem = icon4
            
            let controllers = [info, ingredients, cooking, author]
            self.viewControllers = controllers
        }

        //Delegate methods
        func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            print("Should select viewController: \(viewController.title ?? "") ?")
            return true
        }
    


}
