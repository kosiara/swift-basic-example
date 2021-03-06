//
//  LoginPanelViewController.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import UIKit

private let loggedInPageSegue = "LoggedInPageSegue"

class LoginPanelViewController: UIViewController, LoginPanelViewType {
    
    var loginPanelPresenter: LoginPanelPresenterType!
    
    @IBOutlet var username: LoginTextField!
    @IBOutlet var password: LoginTextField!
    @IBOutlet var mainView: UIView!
    @IBOutlet var innerUserPassView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginPanelPresenter.view = self
        mainView.backgroundColor = ColorUtil.colorWithHexString(hexString: "21314a")
        innerUserPassView.backgroundColor = ColorUtil.colorWithHexString(hexString: "21314a")
        username.backgroundColor = ColorUtil.colorWithHexString(hexString: "21314a")
        password.backgroundColor = ColorUtil.colorWithHexString(hexString: "21314a")
        
        username.textColor = UIColor.white
        password.textColor = UIColor.white
        
        username.attributedPlaceholder = NSAttributedString(string:"Email address:", attributes: [NSForegroundColorAttributeName: UIColor.white])
        password.attributedPlaceholder = NSAttributedString(string:"Password:", attributes: [NSForegroundColorAttributeName: UIColor.white])
    }
    
    @IBAction func submitButtonTapped(sender: UIButton) {
        loginPanelPresenter?.loginUser(username: username.text, password: password.text)
    }
    
    // MARK: LoginPanelViewType
    
    func openUserDetailsPage() {
        performSegue(withIdentifier: loggedInPageSegue, sender: nil)
    }
    
    func showUnauthorizedMessage() {
        //TODO implement
    }
}
