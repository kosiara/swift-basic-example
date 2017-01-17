//
//  UIViewController+DI.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import UIKit

extension UIViewController {
    
    static func resolved() -> Self {
        if let injected = AllContainerFactory.sharedContainer.resolve(self) {
            return injected
        } else {
            print("DI: could not resolve class of type: \(String(describing: self))")
            return self.init()
        }
    }
}
