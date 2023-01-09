//
//  RecepieData.swift
//  Octopus
//
//  Created by Sergey Pavlov on 06.01.2023.
//

import Foundation

class RecipeBank {
    var shared: RecipeData {
    
        guard let pathJson = Bundle.main.path(forResource: "json24", ofType: "json") else { return self.shared }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: pathJson), options: .mappedIfSafe)
            let object = try JSONDecoder().decode(RecipeData.self, from: data)
            return object
        } catch {
            print("Error")
            return self.shared
        }
    }
}
