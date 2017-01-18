//
//  ContainerFactoryType.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import Swinject

protocol ContainerFactoryType {
    static func configureContainer(container: Container) -> Void
}

extension ContainerFactoryType {
    
    static func createContainer() -> Container {
        let container = Container()
        configureContainer(container: container)
        return container
    }
}
