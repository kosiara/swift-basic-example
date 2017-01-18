//
//  ViewControllerContainerFactory.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import Swinject
import SwinjectStoryboard

class  ViewControllerContainerFactory: ContainerFactoryType {
    
    class func configureContainer(container: Container) {

        container.storyboardInitCompleted(LoginPanelViewController.self) { r, vc in
            vc.loginPanelPresenter = r.resolve(LoginPanelPresenter.self)
        }
    }
}
