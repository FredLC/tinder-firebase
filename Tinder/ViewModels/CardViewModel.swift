//
//  CardViewModel.swift
//  Tinder
//
//  Created by Fred Lefevre on 2020-04-23.
//  Copyright © 2020 Fred Lefevre. All rights reserved.
//

import UIKit

protocol ProducesCardViewModel {
    func toCardViewModel () -> CardViewModel
}

struct CardViewModel {
    let imageName: String
    let attributedText: NSAttributedString
    let textAlignment: NSTextAlignment
}
