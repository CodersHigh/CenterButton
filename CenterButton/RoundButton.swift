//
//  RoundButton.swift
//  PomoTimerBeginner
//
//  Created by Lingostar on 2015. 4. 14..
//  Copyright (c) 2015년 Lingostar. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    override var isHighlighted : Bool {
        didSet {
            if isHighlighted {
                self.backgroundColor = self.tintColor
                self.layer.borderColor = self.titleColor(for: .highlighted)?.cgColor
                
            } else {
                self.backgroundColor = UIColor.clear
                self.layer.borderColor = self.tintColor?.cgColor
            }
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 2
        self.layer.borderColor = self.tintColor?.cgColor
        self.setTitleColor(UIColor.white, for: .highlighted)
    }
}
