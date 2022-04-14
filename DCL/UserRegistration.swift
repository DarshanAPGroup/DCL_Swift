//
//  UserRegistration.swift
//  DCL
//
//  Created by AP-GROUP on 05/04/22.
//

import UIKit

class UserRegistration: UIViewController {

    @IBOutlet weak var backBtn: UIImageView!
    @IBAction func addpicturetapped(_ sender: Any) {
    }
    @IBOutlet weak var Userregiimg: UIImageView!
    @IBOutlet weak var registrationview: UIView!
    
    @IBOutlet weak var username: UIView!
    @IBOutlet weak var confirmpassword: UIView!
    @IBOutlet weak var password: UIView!
    @IBOutlet weak var email: UIView!
    @IBOutlet weak var phone: UIView!
    override func viewDidLoad() {
//        registrationview.layer.cornerRadius = 50
//        registrationview.layer.masksToBounds = true
//        username.layer.cornerRadius = 15
//        username.layer.masksToBounds = true
//        phone.layer.cornerRadius = 15
//        phone.layer.masksToBounds = true
//        email.layer.cornerRadius = 15
//        email.layer.masksToBounds = true
//        password.layer.cornerRadius = 15
//        password.layer.masksToBounds = true
//        confirmpassword.layer.cornerRadius = 15
//        confirmpassword.layer.masksToBounds = true
        super.viewDidLoad()
        
//        Userregiimg.layer.borderWidth = 2
//        Userregiimg.layer.masksToBounds = false
//        Userregiimg.layer.borderColor = UIColorFromRGB(rgbValue: 0x152643).cgColor
//
//        Userregiimg.layer.cornerRadius = Userregiimg.frame.height/2
//        Userregiimg.clipsToBounds = true
    }
    @IBAction func backBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
   public func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
};
extension UIImage {
        func imageWithInsets(insets: UIEdgeInsets) -> UIImage? {
            UIGraphicsBeginImageContextWithOptions(
                CGSize(width: self.size.width + insets.left + insets.right,
                       height: self.size.height + insets.top + insets.bottom), false, self.scale)
            let _ = UIGraphicsGetCurrentContext()
            let origin = CGPoint(x: insets.left, y: insets.top)
            self.draw(at: origin)
            let imageWithInsets = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return imageWithInsets
        }
    }

