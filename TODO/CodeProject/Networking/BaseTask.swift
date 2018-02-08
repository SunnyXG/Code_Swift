//
//  BaseTask.swift
//  CodeProject
//
//  Created by mac on 2018/2/8.
//  Copyright © 2018年 -. All rights reserved.
//

import UIKit
import Alamofire

class BaseTask: NSObject {
    
    static let shareInstance = BaseTask()
    private override init() {}
    
    override class func description() -> String {
        return ""
    }
    
    static func send() {
        
    }

}
