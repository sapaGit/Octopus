//
//  MainViewController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 09.01.2023.
//

import UIKit

class MainViewController: UIViewController {
   
    var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica-Bold", size: 19)
        return label
    }()
    
    let authorImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 20)
        return label
    }()
    
    var goToRecipesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Go to Octopus recipes", for: .normal)
        button.addTarget(self, action: #selector(goToListVC), for: .touchUpInside)
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupInterface()
        setConstraints()
    }
    
   private func setupInterface() {
        
        view.backgroundColor = .white
//        navigationItem.title = "Main"
        
        titleLabel.text = "Octopus. It's a water animal."
        view.addSubview(titleLabel)
        
        authorImageView.image = UIImage(named: "CoolYang")
        authorImageView.contentMode = .scaleAspectFill
        view.addSubview(authorImageView)
        
        infoLabel.text = "Hello, my name is Jian Yang and in this application you can find eight wonderful recipes for cooking octopus."
        view.addSubview(infoLabel)
        
        view.addSubview(goToRecipesButton)
    }
    
    @objc private func goToListVC() {
        let controller = ListViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
        
        private func setConstraints() {
            NSLayoutConstraint.activate([
                
                titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
                
                authorImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
                authorImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                authorImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
                authorImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
                
                infoLabel.topAnchor.constraint(equalTo: authorImageView.bottomAnchor, constant: 10),
                infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                infoLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
                
                goToRecipesButton.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 10),
                goToRecipesButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                goToRecipesButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
                goToRecipesButton.heightAnchor.constraint(equalToConstant: 30)
            
            ])
        }

}
