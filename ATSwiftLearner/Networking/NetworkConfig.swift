//
//  NetworkConfig.swift
//  ATSwiftLearner
//
//  Created by MOBILE MAC1 on 1/4/19.
//  Copyright © 2019 MOBILE MAC1. All rights reserved.
//

import UIKit
import Alamofire

struct K {
  struct ProductionServer {
    static let baseURL = "http://itechnodev.com/api"
  }
  
  struct APIParameterKey {
    static let password = "password"
    static let email = "email"
  }
}

enum HTTPHeaderField: String {
  case authentication = "Authorization"
  case contentType = "Content-Type"
  case acceptType = "Accept"
  case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
  case json = "application/json"
}


  
