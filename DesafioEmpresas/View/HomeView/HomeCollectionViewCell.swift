//
//  HomeCollectionViewCell.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    func empresaButton(_: UIButton) {
        let button = UIView()
        button.addSubview(empresaButtomName)
        button.addSubview(empresaButtomBackground)
        button.addSubview(empresaButtomImage)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 152).isActive = true
        button.heightAnchor.constraint(equalToConstant: 144).isActive = true
        button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        button.topAnchor.constraint(equalTo: topAnchor, constant: 210).isActive = true
        addSubviews()
    }
    
    private lazy var empresaButtomName: UILabel = {
        let empresaButtomName = UILabel()
        empresaButtomName.text = "Empresa"
        empresaButtomName.backgroundColor = .white
        empresaButtomName.font = UIFont(name: "Gilroy-SemiBold", size: 14)
        empresaButtomName.textAlignment = .center
        empresaButtomName.textColor = UIColor(named: "DarkGray")
        empresaButtomName.translatesAutoresizingMaskIntoConstraints = false
        return empresaButtomName
    }()
    
    private func constraintsEmpresaButtomName() {
        empresaButtomName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 8).isActive = true
        empresaButtomName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        empresaButtomName.heightAnchor.constraint(equalToConstant: 33).isActive = true
        empresaButtomName.widthAnchor.constraint(equalToConstant: 152).isActive = true
    }
    
    private lazy var empresaButtomBackground: UIView = {
        let empresaButtomBackground = UIView()
        empresaButtomBackground.backgroundColor = UIColor(named: "headerBackground")
        empresaButtomBackground.contentMode = .scaleAspectFit
        empresaButtomBackground.frame.size.height = 11
        empresaButtomBackground.frame.size.width = 152
        empresaButtomBackground.layer.cornerRadius = 16
        empresaButtomBackground.translatesAutoresizingMaskIntoConstraints = false
        return empresaButtomBackground
    }()
    
    private func constraintsEmpresaButtomBackground() {
        empresaButtomBackground.bottomAnchor.constraint(equalTo: empresaButtomName.topAnchor).isActive = true
        empresaButtomBackground.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        empresaButtomBackground.heightAnchor.constraint(equalToConstant: 74).isActive = true
        empresaButtomBackground.widthAnchor.constraint(equalToConstant: 152).isActive = true
    }
    
    private lazy var empresaButtomImage: UIImageView = {
        let empresaButtomImage = UIImageView()
        empresaButtomImage.image = UIImage()
        empresaButtomImage.contentMode = .scaleAspectFit
        empresaButtomImage.layer.cornerRadius = 16
        return empresaButtomImage
    }()
    
    private func constraintsEmpresaButtomImage() {
        empresaButtomImage.bottomAnchor.constraint(equalTo: empresaButtomName.topAnchor).isActive = true
        empresaButtomImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        empresaButtomImage.heightAnchor.constraint(equalToConstant: 111).isActive = true
        empresaButtomImage.widthAnchor.constraint(equalToConstant: 89).isActive = true
    }
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        constraintsEmpresaButtomName()
        constraintsEmpresaButtomBackground()
        constraintsEmpresaButtomImage()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews(){
        addSubview(empresaButtomName)
        addSubview(empresaButtomBackground)
        addSubview(empresaButtomImage)
    }
    
}
