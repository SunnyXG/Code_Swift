//
//  BaseSessionManager.swift
//  CodeProject
//
//  Created by mac on 2018/2/8.
//  Copyright © 2018年 -. All rights reserved.
//

import UIKit
import Alamofire

enum HTTPMethod : String {
    case HTTPMethodGet = "Get"
    case HTTPMethodPost = "Post"
    case HTTPMethodPut = "Put"
    case HTTPMethodDelete = "Delete"
}

class BaseRequest: NSObject {
    override init() {
        super.init()
    }
    
    var requestURL: String?
    var method: HTTPMethod?
    var parameters: Any?
}

class BaseSessionManager: SessionManager {
    
    
 

}
