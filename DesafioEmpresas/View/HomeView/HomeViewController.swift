//
//  HomeViewController.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let identifier = "HomeViewController"

    private var customHomeView: HomeView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildHomeView()
    
        configureNavTable()
        // Do any additional setup after loading the view.
        
        getEnterprises(token: "kXQXcVbACOXdOLZN4ZBZ8w", client: "8MV5BfP1SjN8cZrzpCNMsw", uid: "testeapple@ioasys.com.br")
    }
    
    private func buildHomeView() {
        view = HomeView()
        customHomeView = view as? HomeView
    }
    
    private func backButton() {
        let homeVC = HomeViewController()
        navigationController?.pushViewController(homeVC, animated: true)
        print("Home")
    }

    // MARK: - Navigation
    
    @objc func backHome() {
        print("oi")
    }

     func configureNavTable() {
         view.backgroundColor = .white
     }
}
