//
//  PresentersContainerFactory.swift
//  FireLampades
//
//  Created by Patryk Domagala on 17/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import Swinject

class PresentersContainerFactory: ContainerFactoryType {
    
    class func configureContainer(container: Container) {
        
        container.register(LoginPanelPresenter.self) { _ in
            return LoginPanelPresenter()
        }
    }
}
