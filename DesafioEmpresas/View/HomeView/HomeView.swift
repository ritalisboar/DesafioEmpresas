//
//  HomeView.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

final class HomeView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
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
        constraintsNotFound()
        constraintsNotFoundLabel()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews(){
        addSubview(notFoundImage)
        addSubview(notFountLabel)
    }

}
