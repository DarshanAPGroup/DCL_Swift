//
//  PhoneVerificatiion.swift
//  DCL
//
//  Created by AP-GROUP on 31/03/22.
//

import UIKit

class PhoneVerificatiion: UIViewController {

    @IBOutlet weak var phoneverificaitonview: UIView!
    override func viewDidLoad() {
        phoneverificaitonview.layer.cornerRadius = 50
        phoneverificaitonview.layer.masksToBounds = true
        view.addSubview(phoneverificaitonview)
        super.viewDidLoad()
    }
}
