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

    override var highlighted : Bool {
        didSet {
            if highlighted {
                self.backgroundColor = self.tintColor
                self.layer.borderColor = self.titleColorForState(.Highlighted)?.CGColor
                
            } else {
                self.backgroundColor = UIColor.clearColor()
                self.layer.borderColor = self.tintColor?.CGColor
            }
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 2
        self.layer.borderColor = self.tintColor?.CGColor
        self.setTitleColor(UIColor.whiteColor(), forState: .Highlighted)
    }
}
