//
// Created by Adam Fręśko on 17/01/2017.
// Copyright (c) 2017 Adam Fręśko. All rights reserved.
//

import Foundation

class UserModel {
//"name" : "Jack",
//"surname" : "Nicholson",
//"email" : "Flippant-Corp@gmail.com",
//"job_title" : "CEO",
//"timestamp" : 1484660240,
//"department" : "POZNAN",
//"cell_phone" : "+1-541-596-0529"

    public var name: String = "";
    public var surname: String = "";
    public var email: String = "";
    public var jobTitle: String = "";

    /**
     epoch time in milliseconds
     <br>
     // UInt64(NSDate().timeIntervalSince1970 * 1000.0)
    */
    public var timestamp: UInt64 = 0
    public var department:String=""

}