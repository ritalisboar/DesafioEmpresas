//
//  DetailsEmpresaView.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 17/04/22.
//

import UIKit

class DetailsEmpresaView: UIView {

    //     MARK: - background
        private lazy var backgroundHeader: UIView = {
            let backgroundHeader = UIView()
            backgroundHeader.backgroundColor = UIColor(named: "headerBackground")
            backgroundHeader.contentMode = .scaleAspectFit
            backgroundHeader.translatesAutoresizingMaskIntoConstraints = false
            return backgroundHeader
        }()
        
        private func constraintsBackgroundHeader() {
            backgroundHeader.topAnchor.constraint(equalTo: topAnchor).isActive = true
            backgroundHeader.heightAnchor.constraint(equalToConstant: 148).isActive = true
            backgroundHeader.widthAnchor.constraint(equalToConstant: 450).isActive = true
        }
    
        private lazy var arrow: UIImageView = {
           let arrow = UIImageView()
            arrow.image = UIImage(systemName: "arrow.left")
            arrow.tintColor = .white
            arrow.translatesAutoresizingMaskIntoConstraints = false
            return arrow
        }()
        
        private func constraintsArrow() {
            arrow.topAnchor.constraint(equalTo: topAnchor, constant: 69).isActive = true
            arrow.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 34).isActive = true
            arrow.widthAnchor.constraint(equalToConstant: 20).isActive = true
            arrow.heightAnchor.constraint(equalToConstant: 20).isActive = true
        }
    
        private lazy var empresaName: UILabel = {
            empresaName = UILabel()
            empresaName.text = "Empresa"
            empresaName.textColor = .white
            empresaName.font = UIFont(name: "Gilroy-Bold", size: 24)
            empresaName.textAlignment = .center
            empresaName.numberOfLines = 2
            empresaName.lineBreakMode = .byWordWrapping
            empresaName.translatesAutoresizingMaskIntoConstraints = false
            return empresaName
        }()
        
        private func constraintsEmpresaName() {
            empresaName.topAnchor.constraint(equalTo: topAnchor, constant: 68).isActive = true
            empresaName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        }
    
        private lazy var empresaService: UILabel = {
            empresaService = UILabel()
            empresaService.text = "Serviço"
            empresaService.textColor = .white
            empresaService.font = UIFont(name: "Gilroy-Regular", size: 16)
            empresaService.textAlignment = .center
            empresaService.numberOfLines = 2
            empresaService.lineBreakMode = .byWordWrapping
            empresaService.translatesAutoresizingMaskIntoConstraints = false
            return empresaService
        }()
        
        private func constraintsHomeEmpresaService() {
            empresaService.topAnchor.constraint(equalTo: empresaName.bottomAnchor, constant: 4).isActive = true
            empresaService.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        }
    
    //     MARK: - background
        private lazy var backgroundImage: UIView = {
            let backgroundImage = UIView()
            backgroundImage.backgroundColor = .white
            backgroundImage.contentMode = .scaleAspectFit
            backgroundImage.translatesAutoresizingMaskIntoConstraints = false
            return backgroundImage
        }()
        
        private func constraintsBackgroundImage() {
            backgroundImage.topAnchor.constraint(equalTo: backgroundHeader.bottomAnchor).isActive = true
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        }
        
        
        // MARK: - empresaImage
        
        private lazy var empresaImage: UIImageView = {
           let empresaImage = UIImageView()
            empresaImage.image = UIImage(named: "faro")
            empresaImage.contentMode = .scaleAspectFill
            empresaImage.translatesAutoresizingMaskIntoConstraints = false
            return empresaImage
        }()
        
        private func constraintsEmpresaImage() {
            empresaImage.topAnchor.constraint(equalTo: backgroundHeader.bottomAnchor).isActive = true
            empresaImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            empresaImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            empresaImage.widthAnchor.constraint(equalToConstant: 400).isActive = true
            empresaImage.heightAnchor.constraint(equalToConstant: 244).isActive = true
        }
        
    
    //MARK: - empresaDescription
        private lazy var empresaDescription: UILabel = {
           let empresaDescription = UILabel()
            empresaDescription.textColor = .black
            empresaDescription.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
            empresaDescription.alpha = 0.6
            empresaDescription.textAlignment = .left
            empresaDescription.numberOfLines = 20
            empresaDescription.lineBreakMode = .byWordWrapping
            empresaDescription.font = UIFont(name: "Gilroy-Regular", size: 16)
            empresaDescription.translatesAutoresizingMaskIntoConstraints = false
            return empresaDescription
        }()
        
        private func constraintsEmpresaDescription() {
            empresaDescription.topAnchor.constraint(equalTo: empresaImage.bottomAnchor, constant: 31).isActive = true
            empresaDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
            empresaDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        }
        
        init() {
            super.init(frame: .zero)
            addSubviews()
            constraintsBackgroundHeader()
            constraintsBackgroundImage()
            constraintsArrow()
            constraintsEmpresaName()
            constraintsHomeEmpresaService()
            constraintsEmpresaImage()
            constraintsEmpresaDescription()
        }

        required init?(coder: NSCoder) {
            fatalError()
        }

        private func addSubviews(){
            addSubview(backgroundHeader)
            addSubview(backgroundImage)
            addSubview(arrow)
            addSubview(empresaName)
            addSubview(empresaService)
            addSubview(empresaImage)
            addSubview(empresaDescription)
        }

    }
