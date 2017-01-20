//
//  LoginPanelViewController.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import UIKit
import AnimatedTextInput

private let loggedInPageSegue = "LoggedInPageSegue"


class LoginPanelViewController: UIViewController, LoginPanelViewType {
    
    var loginPanelPresenter: LoginPanelPresenterType!
    
    @IBOutlet var username: AnimatedTextInput!
    @IBOutlet var password: AnimatedTextInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginPanelPresenter.view = self
        
        username.accessibilityLabel = "standard_text_input"
        //username.type = .email
        //username.style = CustomTextInputStyle()
        username.placeHolderText = "aaaa"
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

struct CustomTextInputStyle: AnimatedTextInputStyle {
    
    let activeColor = UIColor.orange
    let inactiveColor = UIColor.gray.withAlphaComponent(0.3)
    let lineInactiveColor = UIColor.gray.withAlphaComponent(0.3)
    let errorColor = UIColor.red
    let textInputFont = UIFont.systemFont(ofSize: 14)
    let textInputFontColor = UIColor.black
    let placeholderMinFontSize: CGFloat = 9
    let counterLabelFont: UIFont? = UIFont.systemFont(ofSize: 9)
    let leftMargin: CGFloat = 25
    let topMargin: CGFloat = 20
    let rightMargin: CGFloat = 0
    let bottomMargin: CGFloat = 10
    let yHintPositionOffset: CGFloat = 7
    let yPlaceholderPositionOffset: CGFloat = 0
}
