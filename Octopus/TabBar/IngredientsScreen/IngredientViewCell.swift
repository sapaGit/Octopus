//
//  IngredientViewCell.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class IngredientTableViewCell: UITableViewCell {
    func configure(with ingredient: Ingredient) {
        var content = defaultContentConfiguration()
        content.text = ingredient.ingredient
        content.textProperties.alignment = .center
        contentConfiguration = content
    }
}
