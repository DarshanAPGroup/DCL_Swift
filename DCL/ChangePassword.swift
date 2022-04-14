import UIKit

class ChangePassword: UIViewController {

    @IBOutlet weak var changepasswordview: UIView!
    @IBOutlet weak var newpassword: UIView!
    @IBOutlet weak var confirmpassword: UIView!
    override func viewDidLoad() {
        changepasswordview.layer.cornerRadius = 50
        changepasswordview.layer.masksToBounds = true
        newpassword.layer.cornerRadius = 15
        newpassword.layer.masksToBounds = true
        confirmpassword.layer.cornerRadius = 15
        confirmpassword.layer.masksToBounds = true
        super.viewDidLoad()
    }
}
