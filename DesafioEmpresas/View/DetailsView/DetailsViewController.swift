//
//  DetailsViewController.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

class DetailsViewController: UIViewController {

    private var customDetailsView: DetailsEmpresaView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDetaisView()
        // Do any additional setup after loading the view.
    }
    

    private func buildDetaisView() {
        view = DetailsEmpresaView()
        customDetailsView = view as? DetailsEmpresaView
    }
//    
//    private func backButton() {
//        let homeVC = HomeViewController()
//        navigationController?.pushViewController(homeVC, animated: true)
//        print("Home")
//    }

}
