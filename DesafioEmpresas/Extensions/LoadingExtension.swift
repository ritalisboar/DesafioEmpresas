//
//  LoadingExtension.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 13/04/22.
//

import UIKit

extension LoadingView where Self: UIViewController {
    private var tag: Int {
        return 684
    }
    
    func hideLoadingView() {
        self.view.viewWithTag(self.tag)?.removeFromSuperview()
    }
    
    func showLoadingView(with text: String? = nil) {
        let loadingView = LoadView()
        loadingView.tag = tag
        view.addSubview(loadingView)
    }
        
    func indicatorView() -> UIActivityIndicatorView {
        let indicatorView = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
        indicatorView.center = CGPoint(x: view.center.x, y: view.center.y)
        indicatorView.startAnimating()
        return indicatorView
    }
}
