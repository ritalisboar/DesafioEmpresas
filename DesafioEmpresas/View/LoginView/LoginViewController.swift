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
    }

    private func buildView1() {
        view = LoadView()
        customLoadingView = view as? LoadView
    }
    
    private func buildView2() {
        view = LoginView()
        customLoginView = view as? LoginView

    }
    
    @objc
    func buttonAction() {
        let homeVC = HomeViewController()
        let navVC = UINavigationController(rootViewController: homeVC)
        present(navVC, animated: true)
//        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: HomeView())
//        navigationController?.pushViewController(homeViewController, animated: true)
//        self.navigationController?.pushViewController(homeViewController, animated: true)
        print("chegou")
    }
    
    func configureUI() {
        navigationItem.rightBarButtonItem = .none
    }
    
}

