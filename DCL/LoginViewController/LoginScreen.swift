import UIKit
import QuartzCore
class LoginScreen : UIViewController {
    @IBOutlet weak var loginview: UIView!
    
    @IBOutlet weak var password: UIView!
    @IBOutlet weak var email: UIView!
    @IBAction func loginbtn(_ sender: UIButton) {
        let loginbtnTapped = UIButton()
        loginbtnTapped.tag = 5
        loginbtnTapped.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    @IBAction func forgotpasswordbtn(_ sender: UIButton) {
    //        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    //        let ForgotPasswordController = storyBoard.instantiateViewController(withIdentifier: "ForgotPassword") as! ForgotPassword
    //        self.present(ForgotPasswordController, animated:true, completion:nil)
    }
    override func viewDidLoad() {
        loginview.layer.cornerRadius = 50
        loginview.layer.masksToBounds = true
//        email.layer.cornerRadius = 15
//        email.layer.masksToBounds = true
//        password.layer.cornerRadius = 15
//        password.layer.masksToBounds = true
//        view.addSubview(loginview)
        super.viewDidLoad()
    }
    @objc func didTapButton(){
        present(UINavigationController(rootViewController: ForgotPassword()),animated: true)
    }
    
}
