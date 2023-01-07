//
//  ViewController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 06.01.2023.
//

import UIKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        let data = RecepieBank()
        print(data.shared.menu[0].recepie.title)
    }
}

