//
//  TableViewCell.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class RecepieTableViewCell: UITableViewCell {
    func configure(with recepie: Recipe) {
        var content = defaultContentConfiguration()
        content.text = recepie.title
        guard let image = UIImage(named: recepie.smallImage) else { return }
        content.imageProperties.maximumSize.width = 100
        content.image = image
        content.imageProperties.cornerRadius = 7
        contentConfiguration = content
    }
}
