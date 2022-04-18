//
//  LoginViewController.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 12/04/22.
//

import UIKit

class LoginViewController: UIViewController, UITextViewDelegate {
    
    private var customLoginView: LoginView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView2()
        
        customLoginView?.entrarButton.addAction(UIAction { [weak self] _ in
            self?.buttonAction()
        }, for: .touchUpInside)
    }
    
    private func buildView2() {
        view = LoginView()
        customLoginView = view as? LoginView

    }
    
    // MARK: - entrarButton
    
    private func buttonAction() {
        
       var response = loginRequest(email: customLoginView?.emailTextField.text ?? "", password: (customLoginView?.senhaTextField.text) ?? "")
        
        print("response", response)
//        let homeVC = HomeViewController()
//        navigationController?.pushViewController(homeVC, animated: true)
//        navigationController?.navigationBar.isTranslucent = true
//        navigationItem.hidesBackButton = false
        print("login")
    }
    
    func configureUI() {
        navigationItem.rightBarButtonItem = .none
    }
    
}

class SecondView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
    }
}
