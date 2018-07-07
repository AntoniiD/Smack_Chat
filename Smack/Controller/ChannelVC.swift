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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
