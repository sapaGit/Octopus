//
//  DescrriptionViewController.swift
//  Octopus
//
//  Created by Sergey Pavlov on 07.01.2023.
//

import UIKit

class InfoViewController: UIViewController {

    var recepie: Recepie!
    
    var scrollView: UIScrollView = {
            let scroll = UIScrollView()
            scroll.translatesAutoresizingMaskIntoConstraints = false
//            scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
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
    
    let recepieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 20)
        return label
    }()
    
    var dificultyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica-Bold", size: 19)
        return label
    }()
    
    var cookingTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica-Bold", size: 19)
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
        
        titleLabel.text = recepie.title
        scrollView.addSubview(titleLabel)
        
        recepieImageView.image = UIImage(named: recepie.largeImage)
        recepieImageView.contentMode = .scaleAspectFill
        scrollView.addSubview(recepieImageView)
        
        infoLabel.text = recepie.info
        scrollView.addSubview(infoLabel)
        
        dificultyLabel.text = "Dificulty: \(recepie.dificulty)"
        scrollView.addSubview(dificultyLabel)
        
        cookingTimeLabel.text = "Cooking time: \(recepie.cookingTime)"
        scrollView.addSubview(cookingTimeLabel)
    
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
            
            recepieImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            recepieImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            recepieImageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.7),
            recepieImageView.heightAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.7),
            
            infoLabel.topAnchor.constraint(equalTo: recepieImageView.bottomAnchor, constant: 10),
            infoLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            infoLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            
            dificultyLabel.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 10),
            dificultyLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            dificultyLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            
            cookingTimeLabel.topAnchor.constraint(equalTo: dificultyLabel.bottomAnchor, constant: 10),
            cookingTimeLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            cookingTimeLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            cookingTimeLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0)
        ])
    }
}
