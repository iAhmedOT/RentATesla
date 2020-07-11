//
//  BorderButton.swift
//  Swoosh
//
//  Created by Ahmed AlOtaibi on 8/6/19.
//  Copyright © 2019 Ahmed AlOtaibi. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
