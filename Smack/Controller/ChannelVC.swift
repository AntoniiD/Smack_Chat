//
//  ChannelVC.swift
//  Smack
//
//  Created by Anton on 7/5/18.
//  Copyright © 2018 Antonii D. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    
    // Outlets
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var userImg: CircleImage!

    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
   @objc func userDataDidChange(_ notif: Notification) {
    if AuthService.instance.isLoggedIn {
        loginBtn.setTitle(UserDataService.instance.name, for: .normal)
        userImg.image = UIImage(named: UserDataService.instance.avatarName)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
    } else {
        loginBtn.setTitle("Login", for: .normal)
        userImg.image = UIImage(named: "menuProfileIcon")
        userImg.backgroundColor = UIColor.clear
    }
    }
}
