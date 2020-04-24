//
//  ViewController.swift
//  Tinder
//
//  Created by Fred Lefevre on 2020-04-13.
//  Copyright © 2020 Fred Lefevre. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    let topStackView = TopNavigationStackView()
    let cardsDeckView = UIView()
    let buttonsStackView = HomeBottomControlsStackView()

    let cardViewModels: [CardViewModel] = {
        let producers = [
            User(name: "Kelly", age: 18, profession: "Professional DJ", imageName: "lady5c"),
            User(name: "Jane", age: 23, profession: "Teacher", imageName: "lady4c"),
            Advertiser(title: "Slide Out Menu", brandName: "Slack", posterPhotoName: "slide_out_menu_poster")
        ] as [ProducesCardViewModel]
        
        let cardViewModels = producers.map({ return $0.toCardViewModel() })
        return cardViewModels
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupDummyCards()
    }
    
    
    fileprivate func setupDummyCards() {
        cardViewModels.forEach { (cardVM) in
            let cardView = CardView(frame: .zero)
            cardView.cardViewModel = cardVM
            
            cardsDeckView.addSubview(cardView)
            cardView.fillSuperview()
        }
    }

    
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, cardsDeckView, buttonsStackView])
        overallStackView.axis = .vertical
        
        view.addSubview(overallStackView)
        
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        
        overallStackView.fillSuperview()
        overallStackView.isLayoutMarginsRelativeArrangement = true
        overallStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
        
        overallStackView.bringSubviewToFront(cardsDeckView)
    }

}

