//
//  DetailViewController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class IngredientsViewController: UIViewController {

    var recepie: Recepie!
    let ingredientsTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Your octopus recepie"
        setupTableView()
    }
    
    private func setupTableView() {
        ingredientsTableView.register(IngredientTableViewCell.self, forCellReuseIdentifier: "IngredientCell")
        ingredientsTableView.frame = CGRect(x: 10, y: 10, width: self.view.frame.width, height: 500)
        ingredientsTableView.dataSource = self
        ingredientsTableView.delegate = self
        self.view.addSubview(ingredientsTableView)
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
