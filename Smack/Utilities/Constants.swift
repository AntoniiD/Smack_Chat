//
//  Constants.swift
//  Smack
//
//  Created by Anton on 7/6/18.
//  Copyright © 2018 Antonii D. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://smackchatter.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

// Colors
let smackPurplePlaceholder = #colorLiteral(red: 0.2588235294, green: 0.3294117647, blue: 0.7254901961, alpha: 0.5)

// Notifications
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")


// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

//User defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggenIn"
let USER_EMAIL = "userEmail"


// Headers
let HEADER = [
    "Content-Type": "application/json; chartset=utf-8"
]
