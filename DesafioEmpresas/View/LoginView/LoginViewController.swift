//
//  LoginViewController.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 12/04/22.
//

import UIKit

class LoginViewController: UIViewController, UITextViewDelegate {
    
    private var customLoadingView: LoadView? = nil
    private var customLoginView: LoginView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView1()
        buildView2()
        
        customLoginView?.entrarButton.addAction(UIAction { [weak self] _ in
            self?.buttonAction()
        }, for: .touchUpInside)
    }

    private func buildView1() {
        view = LoadView()
        customLoadingView = view as? LoadView
    }
    
    private func buildView2() {
        view = LoginView()
        customLoginView = view as? LoginView

    }
    
    // MARK: - entrarButton
    
    private func buttonAction() {
        let homeVC = HomeViewController()
        navigationController?.pushViewController(homeVC, animated: true)
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
