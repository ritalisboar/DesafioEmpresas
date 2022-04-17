//
//  LoginView.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 12/04/22.
//

import UIKit

final class LoginView: UIView {

    // MARK: - background
    private lazy var backgroundImage: UIImageView = {
        let imageBack = UIImageView()
        imageBack.image = UIImage.init(named: "backgroundLogin")
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
    
    // MARK: - logoPlaceholder
    
    private lazy var logoPlaceholder: UIImageView = {
        let logoPlaceholder = UIImageView()
        logoPlaceholder.image = UIImage.init(named: "ioasysSymbol")
        logoPlaceholder.alpha = 0.5
        logoPlaceholder.frame = .init(x: 0, y: 0, width: 355, height: 288)
        logoPlaceholder.contentMode = .scaleAspectFill
        logoPlaceholder.translatesAutoresizingMaskIntoConstraints = false
        return logoPlaceholder
    }()
    
    private func constraintsLogoPlaceholder() {
        logoPlaceholder.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 159).isActive = true
        logoPlaceholder.topAnchor.constraint(equalTo: wellcomeTitle.topAnchor, constant: -106).isActive = true
    }
    
    // MARK: - boasVindas

    private lazy var wellcomeTitle: UILabel = {
        let wellcomeTitle = UILabel()
        wellcomeTitle.textColor = .white
        wellcomeTitle.text = "Boas vindas,"
        wellcomeTitle.font = UIFont(name: "Gilroy-Bold", size: 40)
        wellcomeTitle.translatesAutoresizingMaskIntoConstraints = false
        return wellcomeTitle
    }()
    
    private func constraintsWellcomeTitle() {
        wellcomeTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
    }
    
    private lazy var wellcomeText: UILabel = {
        let wellcomeText = UILabel()
        wellcomeText.textColor = .white
        wellcomeText.text = "Você está no Empresas."
        wellcomeText.font = UIFont(name: "Gilroy-Regular", size: 24)
        wellcomeText.translatesAutoresizingMaskIntoConstraints = false
//        wellcomeText.font = UIFont(name: "Gilroy-Bold", size: 24)
        return wellcomeText
    }()
    
    private func constraintsWellcomeText() {
        wellcomeText.topAnchor.constraint(equalTo: wellcomeTitle.bottomAnchor).isActive = true
        wellcomeText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        wellcomeText.bottomAnchor.constraint(equalTo: loginContentView.topAnchor, constant: -31).isActive = true
    }
    
    // MARK: - loginContentView
    private lazy var loginContentView: UIView = {
        let loginContentView = UIView()
        loginContentView.backgroundColor = .white
        loginContentView.addSubview(emailTitle)
        loginContentView.addSubview(emailTextField)
        loginContentView.addSubview(senhaTitle)
        loginContentView.addSubview(senhaTextField)
//        backgroundView.addSubview(entrarButton)
        loginContentView.translatesAutoresizingMaskIntoConstraints = false
        return loginContentView
    }()
    
    private func constraintsLoginContentView() {
        loginContentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        loginContentView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        loginContentView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: 356).isActive = true
    }
    
    // MARK: - loginInfosUser / emailTitle
    
    private lazy var orientation: UILabel = {
        let orientation = UILabel()
        orientation.text = "Digite seus dados para continuar."
        orientation.textColor = .black
        orientation.font = UIFont(name: "Gilroy-SemiBold", size: 16)
        orientation.translatesAutoresizingMaskIntoConstraints = false
        return orientation
    }()
    
    private func constraintsOrientation() {
        orientation.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 24).isActive = true
        orientation.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
    }
    
    
    private lazy var emailTitle: UILabel = {
        let emailTitle = UILabel()
        emailTitle.text = "Email"
        emailTitle.textColor = UIColor(named: "DarkGray")
        emailTitle.font = UIFont(name: "Roboto-Medium", size: 12)
        emailTitle.translatesAutoresizingMaskIntoConstraints = false
        return emailTitle
    }()
    
    private func constraintsEmailTitle() {
        emailTitle.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 68).isActive = true
        emailTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        emailTitle.bottomAnchor.constraint(equalTo: emailTextField.topAnchor).isActive = true
    }
    
    private lazy var emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "Email"
        emailTextField.resignFirstResponder()
        emailTextField.borderStyle = .roundedRect
        emailTextField.layer.cornerRadius = 8
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(named: "BorderFieldColor")?.cgColor
        emailTextField.backgroundColor = .clear
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        return emailTextField
        }()
    
//    private func emailDoneEditing(_ emailTextField: UITextField) -> Bool {
//        emailTextField.resignFirstResponder()
//        return true
//    }
    
    private func constraintsEmailTextField() {
        emailTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 84).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    
    // MARK: - loginInfosUser / senhaTitle
    
    private lazy var senhaTitle: UILabel = {
        let senhaTitle = UILabel()
        senhaTitle.textColor = UIColor(named: "DarkGray")
        senhaTitle.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        senhaTitle.text = "Senha"
        senhaTitle.translatesAutoresizingMaskIntoConstraints = false
        return senhaTitle
    }()
    
    private func constraintsSenhaTitle() {
        senhaTitle.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 24).isActive = true
        senhaTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
    }
    
    
    private lazy var senhaTextField: UITextField = {
        let senhaTextField = UITextField()
        senhaTextField.placeholder = "Senha"
        senhaTextField.resignFirstResponder()
        senhaTextField.isSecureTextEntry = true
        senhaTextField.borderStyle = .roundedRect
        senhaTextField.layer.cornerRadius = 8
        senhaTextField.layer.borderWidth = 1
        senhaTextField.layer.borderColor = UIColor(named: "BorderFieldColor")?.cgColor
        senhaTextField.backgroundColor = .clear
        senhaTextField.translatesAutoresizingMaskIntoConstraints = false
        return senhaTextField
        }()
    
    private func constraintsSenhaTextField() {
        senhaTextField.topAnchor.constraint(equalTo: senhaTitle.bottomAnchor).isActive = true
        senhaTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        senhaTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        senhaTextField.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    
     // MARK: - entrarButtom

    @objc
    func activeButton() {
        let test = LoginViewController()
        test.buttonAction()
    }

   private lazy var entrarButton: UIButton = {
        let entrarButton = UIButton()
       entrarButton.backgroundColor = UIColor(named: "ButtonColor")
       entrarButton.setTitle("ENTRAR", for: .normal)
       entrarButton.titleColor(for: .application)
       entrarButton.tintColor = .white
       entrarButton.layer.cornerRadius = 23
       entrarButton.addTarget(self, action: #selector(activeButton), for: .touchUpInside)
       entrarButton.tag = 1
       self.addSubview(entrarButton)
       entrarButton.clipsToBounds = true
       entrarButton.translatesAutoresizingMaskIntoConstraints = false
        return entrarButton
    }()

    private func constraintsEntrarButton() {
        entrarButton.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 30).isActive = true
        entrarButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        entrarButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
        entrarButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        constraintsBackgroundImage()
        constraintsLogoPlaceholder()
        constraintsWellcomeTitle()
        constraintsWellcomeText()
        constraintsLoginContentView()
        constraintsOrientation()
        constraintsEmailTitle()
        constraintsEmailTextField()
        constraintsSenhaTitle()
        constraintsSenhaTextField()
        constraintsEntrarButton()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews(){
        addSubview(backgroundImage)
        addSubview(logoPlaceholder)
        addSubview(wellcomeTitle)
        addSubview(wellcomeText)
        addSubview(loginContentView)
        addSubview(orientation)
        addSubview(emailTitle)
        addSubview(emailTextField)
        addSubview(senhaTitle)
        addSubview(senhaTextField)
        addSubview(entrarButton)
    }

}
