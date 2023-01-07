//
//  ViewController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 06.01.2023.
//

import UIKit

class ListViewController: UITableViewController {

    let recepieArray = RecepieBank().shared.menu
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Receipes"
        tableView.register(RecepieTableViewCell.self, forCellReuseIdentifier: "RecepieCell")
    }
    
    private func goToTabBarVC(sender: Any?) {
        let controller = RecepieTabBarController()
        self.navigationController?.pushViewController(controller, animated: true)
        controller.recepie = sender as? Recepie
    }
}

extension ListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recepieArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecepieCell", for: indexPath) as? RecepieTableViewCell else { return UITableViewCell() }
        let recepie = recepieArray[indexPath.row].recepie
        cell.configure(with: recepie)
        return cell
      }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 150
       }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let recepie = recepieArray[indexPath.row].recepie
        goToTabBarVC(sender: recepie)
    }
}
