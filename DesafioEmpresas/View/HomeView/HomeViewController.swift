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
//         self.navigationController?.navigationBar.isTranslucent = true

//         navigationItem.leftBarButtonItem = UIBarButtonItem(
//            image: UIImage(systemName: "arrow.left"),
//            style: .plain,
//            target: self,
//            action: #selector(backHome)
//         )
//
//         navigationItem.searchController = UISearchController(nibName: "Buscar...", bundle: .none)
     }
}
