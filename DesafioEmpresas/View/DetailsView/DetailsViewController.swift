//
//  DetailsViewController.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

class DetailsViewController: UIViewController {

    private var customDetailsView: DetailsView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDetaisView()
        // Do any additional setup after loading the view.
    }
    

    private func buildDetaisView() {
        view = DetailsView()
        customDetailsView = view as? DetailsView
    }
    
    private func backButton() {
        let homeVC = HomeViewController()
        navigationController?.pushViewController(homeVC, animated: true)
        print("Home")
    }

}
