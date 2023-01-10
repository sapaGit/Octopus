//
//  AuthorViewController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class AuthorViewController: UIViewController {

    var recepie: Recipe?
    
    var scrollView: UIScrollView = {
            let scroll = UIScrollView()
            scroll.translatesAutoresizingMaskIntoConstraints = false
            return scroll
        }()
    
   
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupInterface()
        setConstraints()
    }
    
    func setupInterface() {
        
        view.backgroundColor = .white
        navigationItem.title = "Detail info"
        
        view.addSubview(scrollView)
        
        titleLabel.text = recepie?.author
        scrollView.addSubview(titleLabel)
        
        authorImageView.image = UIImage(named: recepie?.authorImage ?? "noImage")
        authorImageView.contentMode = .scaleAspectFill
        scrollView.addSubview(authorImageView)
        
        infoLabel.text = recepie?.authorDescription
        scrollView.addSubview(infoLabel)
    }
        private func setConstraints() {
            NSLayoutConstraint.activate([
                scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
                scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
                scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
                scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
                
                titleLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
                titleLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                titleLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.7),
                
                authorImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
                authorImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                authorImageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.7),
                authorImageView.heightAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.7),
                
                infoLabel.topAnchor.constraint(equalTo: authorImageView.bottomAnchor, constant: 10),
                infoLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                infoLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
                infoLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0)
            
            ])
        }

}
