//
//  ChannelVC.swift
//  Smack
//
//  Created by Anton on 7/5/18.
//  Copyright © 2018 Antonii D. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
}
