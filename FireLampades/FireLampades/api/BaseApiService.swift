//
// Created by Adam Fręśko on 18/01/2017.
// Copyright (c) 2017 Bartosz Kosarzycki. All rights reserved.
//

import Foundation

class BaseApiService {

    public let API_URL: String = ""


    public func appendRequestUrl(requestUrl: String) -> String {
        return requestUrl + ".json"
    }

}