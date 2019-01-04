//
//  NetworkConfig.swift
//  ATSwiftLearner
//
//  Created by MOBILE MAC1 on 1/4/19.
//  Copyright © 2019 MOBILE MAC1. All rights reserved.
//

import UIKit
import Alamofire

enum Endpoint {
  case GetUserInfo(userId: String)
  case UpdateUserInfo(userId: String)
  
  // MARK: - Public Properties
  var method: Alamofire.Method {
    switch self {
    case .GetUserInfo:
      return .GET
    case .UpdateUserInfo:
      return .PUT
    }
  }
  
  var url: NSURL {
    
    let baseUrl = NSURL.getBaseUrl()
    switch self {
    case .GetUserInfo(let userId):
      return baseUrl.URLByAppendingPathComponent("user/\(userId)")! as NSURL
    case .UpdateUserInfo(let userId):
      return baseUrl.URLByAppendingPathComponent("user/\(userId)")! as NSURL
    }
  }

}

private extension NSURL {
  static func getBaseUrl() -> NSURL {
    guard let info = Bundle.main.infoDictionary,
      let urlString = info["BaseUrl"] as? String ,
      let url = NSURL(string: urlString) else {
        print("Cannot find base url")
    }
    return url
  }
}
  
}
