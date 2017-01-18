//
// Created by Adam Fręśko on 17/01/2017.
// Copyright (c) 2017 Adam Fręśko. All rights reserved.
//

import Foundation

class UserApiService:BaseApiService {

    func greet(person: String) -> String {
        let greeting = "Hello, " + person + "!"
        return greeting
    }

    static func getUser(userId:String) -> Alamofire.Request{

    }

    static func getUsers(){
       // let parameters: Parameters = ["foo": "bar"]

        // All three of these calls are equivalent
        Alamofire.request("https://httpbin.org/get", parameters: parameters) // encoding defaults to `URLEncoding.default`
//        Alamofire.request("https://httpbin.org/get", parameters: parameters, encoding: URLEncoding.default)
//        Alamofire.request("https://httpbin.org/get", parameters: parameters, encoding: URLEncoding(destination: .methodDependent))

    }

}