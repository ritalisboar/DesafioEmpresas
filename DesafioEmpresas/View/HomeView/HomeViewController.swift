//
//  HomeViewController.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

class HomeViewController: UIViewController {

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
    
    @objc
    func buttonAction() {
        let homeVC = HomeViewController()
        let homeViewController = UINavigationController(rootViewController: homeVC)
        present(homeViewController, animated: true)
//        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: HomeView())
//        navigationController?.pushViewController(homeViewController, animated: true)
//        self.navigationController?.pushViewController(homeViewController, animated: true)
        print("chegou")
    }

    // MARK: - Navigation
    
    @objc func backHome() {
        print("oi")
    }

     func configureNavTable() {
         view.backgroundColor = .white
         navigationController?.navigationBar.prefersLargeTitles = true
         navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font: UIFont(name: "Gilroy-Bold", size: 40)!
         ]
         navigationItem.title = "Pesquise por uma empresa"
         navigationController?.navigationBar.tintColor = .black
         
         navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"),
            style: .plain,
            target: self,
            action: #selector(backHome)
         )
         
         navigationItem.searchController = UISearchController(nibName: "Buscar...", bundle: .none)
     }

}
