//
//  CookingViewController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class CookingViewController: UIViewController {

    var recepie: Recipe!
    let cookingTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
    }
    
    private func setupTableView() {
        cookingTableView.register(CookingViewCell.self, forCellReuseIdentifier: "CookingCell")
        cookingTableView.frame = CGRect(x: 10, y: 10, width: self.view.frame.width, height: self.view.frame.height)
        cookingTableView.dataSource = self
        cookingTableView.delegate = self
        self.view.addSubview(cookingTableView)
    }

}

extension CookingViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recepie.description.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CookingCell", for: indexPath) as? CookingViewCell else { return UITableViewCell() }
        let step = recepie.description[indexPath.row]
        cell.configure(with: step, number: indexPath.row + 1)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
