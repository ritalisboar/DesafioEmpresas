//
//  DetailsView.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

final class DetailsView: UIView {
    
    private lazy var imageEmpresa: UIImageView = {
        let imageEmpresa = UIImageView()
        imageEmpresa.contentMode = .scaleAspectFill
        imageEmpresa.layer.cornerRadius = 8
        imageEmpresa.clipsToBounds = false
        imageEmpresa.translatesAutoresizingMaskIntoConstraints = false
        return imageEmpresa
    }()

    private func constraintsImageEmpresa() {
        imageEmpresa.topAnchor.constraint(equalTo: topAnchor, constant: 148).isActive = true
        imageEmpresa.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageEmpresa.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    private lazy var descriptionEmpresa: UILabel = {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.28
        let descriptionEmpresa = UILabel()
        descriptionEmpresa.attributedText = NSMutableAttributedString(string: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        descriptionEmpresa.font = UIFont(name: "Gilroy-Regular", size: 16)
        descriptionEmpresa.textAlignment = .left
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
        constraintsImageEmpresa()

    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews(){
        addSubview(imageEmpresa)
        addSubview(descriptionEmpresa)
    }
    
}
