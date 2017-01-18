//
//  LoginPanelPresenter.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import Foundation

class LoginPanelPresenter: LoginPanelPresenterType {

    public var view: LoginPanelViewType?

    // MARK: LoginPanelPresenterType

    func loginUser(username: String?, password: String?) {
        //TODO add provider and read isAuthorized
        let isAuthorized = true
        if isAuthorized {
            view?.openUserDetailsPage()
        } else {
            view?.showUnauthorizedMessage()
        }
    }
}
