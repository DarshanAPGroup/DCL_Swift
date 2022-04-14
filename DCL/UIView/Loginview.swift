//
//  Loginview.swift
//  DCL
//
//  Created by AP-GROUP on 31/03/22.
//

import UIKit

class Loginview: UIView {

    override init(frame: CGRect) {
            super.init(frame: frame)
        self.layer.cornerRadius = 50
        self.layer.masksToBounds = true
            }
    
    required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }
}
