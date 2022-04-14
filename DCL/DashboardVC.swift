//
//  DashboardVC.swift
//  DCL
//
//  Created by AP-GROUP on 05/04/22.
//

import UIKit
import SideMenu

class DashboardVC: UITabBarController {
    var menu: SideMenuNavigationController?
    @IBOutlet weak var searchbarview: UIView!
    @IBOutlet weak var holdingview: UIView!
    override func viewDidLoad() {
        menu = SideMenuNavigationController(rootViewController: MenuListContoller())
        
        menu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        super.viewDidLoad()
    }
    @IBAction func didMenuTapped(){
        present(menu!, animated: true)
    }
}
class MenuListContoller : UITableViewController{
    var items = ["Test1","Test2","Test3","Test4","Test5","Test6","Test7"]
    let backColor = UIColor(red: 15/255.0, green: 26/255.0, blue: 43/255.0, alpha: 1)
    
    
    override func viewDidLoad() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = backColor;
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.textColor = .white
        cell.backgroundColor = backColor;

        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}
