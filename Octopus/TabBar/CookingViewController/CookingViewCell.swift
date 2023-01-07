//
//  CookingViewCell.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class CookingViewCell: UITableViewCell {
    func configure(with step: Description) {
        var content = defaultContentConfiguration()
        content.text = step.step
        contentConfiguration = content
    }
}
