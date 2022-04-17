//
//  DetailsView.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

final class DetailsView: UIView {
    
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
    
    
    
    //MARK: - logoEmpresas
    
    private lazy var imageEmpresa: UIImageView = {
        let imageEmpresa = UIImageView()
        imageEmpresa.image = UIImage(named: "chapada diamantina")
        imageEmpresa.contentMode = .scaleAspectFit
//        imageEmpresa.frame = .init(x: 0, y: 0, width: frame.width, height: 244)
        imageEmpresa.layer.cornerRadius = 8
//        imageEmpresa.clipsToBounds = false
        imageEmpresa.translatesAutoresizingMaskIntoConstraints = false
        return imageEmpresa
    }()

    private func constraintsImageEmpresa() {
        imageEmpresa.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageEmpresa.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageEmpresa.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageEmpresa.heightAnchor.constraint(equalTo: heightAnchor, constant: 244).isActive = true
    }
    
    //MARK: - description
    
    private lazy var descriptionEmpresa: UILabel = {
        let descriptionEmpresa = UILabel()
        descriptionEmpresa.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        descriptionEmpresa.font = UIFont(name: "Gilroy-Regular", size: 16)
        descriptionEmpresa.textAlignment = .left
        descriptionEmpresa.lineBreakMode = .byWordWrapping
        descriptionEmpresa.numberOfLines = 20
        descriptionEmpresa.translatesAutoresizingMaskIntoConstraints = false
        return descriptionEmpresa
    }()
    
    private func constraintsDescriptionEmpresa() {
        descriptionEmpresa.topAnchor.constraint(equalTo: imageEmpresa.bottomAnchor, constant: 31).isActive = true
        descriptionEmpresa.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        descriptionEmpresa.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 24).isActive = true
    }
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        constraintsBackgroundImage()
        constraintsImageEmpresa()
        constraintsDescriptionEmpresa()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews(){
        addSubview(backgroundImage)
        addSubview(imageEmpresa)
        addSubview(descriptionEmpresa)
    }
    
}
