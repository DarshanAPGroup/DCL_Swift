//
//  Tabbed_Home.swift
//  DCL
//
//  Created by AP-GROUP on 07/04/22.
//

import UIKit

class Tabbed_Home: UIViewController {
    private var boxshadow: CAShapeLayer!

    @IBOutlet weak var learningview: UIScrollView!
    @IBOutlet weak var seachbar: UIView!
    @IBOutlet weak var startlearning: UIView!
    override func viewDidLoad() {
        seachbar.layer.cornerRadius = 15
        seachbar.layer.masksToBounds = true
        startlearning.layer.cornerRadius = 20
        startlearning.layer.masksToBounds = false
        
        
//        for view in .subviews as [UIView] {
//            if let btn = view as? UIButton {
//                btn.setTitle("", for: [.selected, .disabled])
//            }
//        }
        for i in 1...3 {
        boxshadow = CAShapeLayer()
            boxshadow.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 40, height: 40), cornerRadius: 12).cgPath
        boxshadow.fillColor = UIColor.white.cgColor

        boxshadow.shadowColor = UIColor.darkGray.cgColor
        boxshadow.shadowPath = boxshadow.path
        boxshadow.shadowOffset = CGSize(width: 2.0, height: 2.0)
        boxshadow.shadowOpacity = 0.8
        boxshadow.shadowRadius = 2

//            learningview.layer.insertSublayer(boxshadow, at: UInt32(i))
//            self.view.addSubview(learningview)
        }
        super.viewDidLoad()
    }

}
