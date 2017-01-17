//
//  AllContainerFactory.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import Swinject

class AllContainerFactory: ContainerFactoryType {
    
    static let sharedContainer: Container = { _ in
        let container = Container()
        AllContainerFactory.configureContainer(container: container)
        return container
    }()
    
    class func configureContainer(container: Container) {
        ProvidersContainerFactory.configureContainer(container: container)
        PresentersContainerFactory.configureContainer(container: container)
        ViewControllerContainerFactory.configureContainer(container: container)
    }
}
