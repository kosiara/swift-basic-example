//
//  LoginPanelPresenterType.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import Foundation

protocol LoginPanelPresenterType {
    var view: LoginPanelViewType? { get set }
    func loginUser(username: String?, password: String?)
}
