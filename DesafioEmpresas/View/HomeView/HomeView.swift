//
//  HomeView.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

final class HomeView: UIView {
    
//     MARK: - background
    private lazy var backgroundImage: UIView = {
        let imageBack = UIView()
        imageBack.backgroundColor = .white
        imageBack.contentMode = .scaleAspectFill
        imageBack.translatesAutoresizingMaskIntoConstraints = false
        return imageBack
    }()
    
    private func constraintsBackgroundImage() {
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    // MARK: - pageTitle
    
    private lazy var homeNavTitle: UILabel = {
        homeNavTitle = UILabel()
        homeNavTitle.text = "Procure por uma empresa"
        homeNavTitle.textColor = .black
        homeNavTitle.font = UIFont(name: "Gilroy-Bold", size: 40)
        homeNavTitle.textAlignment = .left
        homeNavTitle.numberOfLines = 2
        homeNavTitle.lineBreakMode = .byWordWrapping
        homeNavTitle.translatesAutoresizingMaskIntoConstraints = false
        return homeNavTitle
    }()
    
    private func constraintsHomeNavTitle() {
        homeNavTitle.topAnchor.constraint(equalTo: topAnchor, constant: 68).isActive = true
        homeNavTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        homeNavTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
    }
    
    // MARK: - searchBar
    
    private lazy var searchBarEmpresas: UISearchBar = {
        searchBarEmpresas = UISearchBar()
        searchBarEmpresas.placeholder = "Buscar"
        searchBarEmpresas.barTintColor = UIColor.white
        searchBarEmpresas.clipsToBounds = true
        searchBarEmpresas.layer.cornerRadius = 8
        searchBarEmpresas.layer.borderWidth = 2
        searchBarEmpresas.layer.borderColor = CGColor(red: 251, green: 251, blue: 251, alpha: 1)
        searchBarEmpresas.translatesAutoresizingMaskIntoConstraints = false
        return searchBarEmpresas
    }()
    
    private func constraintsSearchBar() {
        searchBarEmpresas.topAnchor.constraint(equalTo: homeNavTitle.bottomAnchor, constant: 32).isActive = true
        searchBarEmpresas.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        searchBarEmpresas.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        
    }
    
    // MARK: - notFound
    
    private lazy var notFoundImage: UIImageView = {
       let notFoundImage = UIImageView()
        notFoundImage.image = UIImage(named: "notFoundImage")
        notFoundImage.contentMode = .scaleAspectFill
        notFoundImage.translatesAutoresizingMaskIntoConstraints = false
        return notFoundImage
    }()
    
    private func constraintsNotFound() {
        notFoundImage.topAnchor.constraint(equalTo: topAnchor, constant: 258).isActive = true
        notFoundImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    private lazy var notFountLabel: UILabel = {
       let notFoundLabel = UILabel()
        notFoundLabel.textColor = .black
        notFoundLabel.text = "Empresa não encontrada"
        notFoundLabel.alpha = 0.6
        notFoundLabel.font = UIFont(name: "Heebo-Regular", size: 16)
        notFoundLabel.translatesAutoresizingMaskIntoConstraints = false
        return notFoundLabel
    }()
    
    private func constraintsNotFoundLabel() {
        notFountLabel.topAnchor.constraint(equalTo: notFoundImage.bottomAnchor, constant: 16).isActive = true
        notFountLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        constraintsBackgroundImage()
        constraintsHomeNavTitle()
        constraintsSearchBar()
        constraintsNotFound()
        constraintsNotFoundLabel()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews(){
        addSubview(backgroundImage)
        addSubview(homeNavTitle)
        addSubview(searchBarEmpresas)
        addSubview(notFoundImage)
        addSubview(notFountLabel)
    }

}
