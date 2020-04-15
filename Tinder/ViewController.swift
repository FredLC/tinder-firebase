//
//  ViewController.swift
//  Tinder
//
//  Created by Fred Lefevre on 2020-04-13.
//  Copyright © 2020 Fred Lefevre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topStackView = TopNavigationStackView()
    let blueView = UIView()
    let buttonsStackView = HomeBottomControlsStackView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView.backgroundColor = .blue
        
        setupLayout()
    }

    
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonsStackView])
        overallStackView.axis = .vertical
        
        view.addSubview(overallStackView)
        
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        
        overallStackView.fillSuperview()
    }

}

