//
//  TableViewCell.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class RecepieTableViewCell: UITableViewCell {
    func configure(with recepie: Recepie) {
        var content = defaultContentConfiguration()
        content.text = recepie.title
        guard let image = UIImage(named: recepie.smallImage) else { return }
        content.image = image
        contentConfiguration = content
    }
}
