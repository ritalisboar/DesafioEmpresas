//
//  SearchView.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 14/04/22.
//

import UIKit

class Search: UISearchBar {
    
    private lazy var search: UISearchBar = {
        let search = UISearchBar()
        search.placeholder = "Buscar..."
        search.sizeToFit()
       return search
    }()
    
    private func constraintsSearch() {
        search.topAnchor.constraint(equalTo: topAnchor, constant: 180).isActive = true
        search.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        search.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
    }
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        constraintsSearch()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews(){
        addSubview(search)
    }
}

