//
//  UserType.swift
//  FireLampades
//
//  Created by Patryk Domagala on 16/01/2017.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import Foundation

protocol UserType {
    var id: Int { get set }
    var username: String { get set }
    var password: String { get set }
}
