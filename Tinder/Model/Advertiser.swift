//
//  Advertiser.swift
//  Tinder
//
//  Created by Fred Lefevre on 2020-04-24.
//  Copyright © 2020 Fred Lefevre. All rights reserved.
//

import UIKit

struct Advertiser: ProducesCardViewModel {
    let title: String
    let brandName: String
    let posterPhotoName: String
    
    func toCardViewModel() -> CardViewModel {
        let attributedString = NSMutableAttributedString(string: title, attributes: [.font: UIFont.systemFont(ofSize: 34, weight: .heavy)])
        attributedString.append(NSAttributedString(string: "\n\(brandName)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .bold)]))
        
        return CardViewModel(imageName: posterPhotoName, attributedText: attributedString, textAlignment: .center)
    }
}
