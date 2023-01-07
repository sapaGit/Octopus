//
//  DetailViewController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class IngredientsViewController: UIViewController {

    var recepie: Recepie!
    let ingredienrsTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Your octopus recepie"
        setupTableView()
    }
    
    private func setupTableView() {
        ingredienrsTableView.register(IngredientTableViewCell.self, forCellReuseIdentifier: "IngredientCell")
        ingredienrsTableView.frame = CGRect(x: 10, y: 10, width: self.view.frame.width, height: 500)
        ingredienrsTableView.dataSource = self
        ingredienrsTableView.delegate = self
        self.view.addSubview(ingredienrsTableView)
    }

}

extension IngredientsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recepie.description.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath) as? IngredientTableViewCell else { return UITableViewCell() }
        let ingredient = recepie.ingredients[indexPath.row]
        cell.configure(with: ingredient)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
