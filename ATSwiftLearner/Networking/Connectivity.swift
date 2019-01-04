//
//  Connectivity.swift
//  ATSwiftLearner
//
//  Created by MOBILE MAC1 on 1/4/19.
//  Copyright © 2019 MOBILE MAC1. All rights reserved.
//

import UIKit
import Alamofire

class Connectivity: NSObject {

  //1 Check Internet Connection
  class var isConnectedToInternet:Bool {
    return NetworkReachabilityManager()!.isReachable
  }
  
  //2 Network change status
  
}
