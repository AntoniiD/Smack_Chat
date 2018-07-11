//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Anton on 7/10/18.
//  Copyright © 2018 Antonii D. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
