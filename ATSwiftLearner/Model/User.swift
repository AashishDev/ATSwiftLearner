//
//  User.swift
//  ATSwiftLearner
//
//  Created by MOBILE MAC1 on 1/4/19.
//  Copyright © 2019 MOBILE MAC1. All rights reserved.
//

import UIKit
import SwiftyJSON

  struct User {
    let userId: String
    var name: String
    var email: String
    var description: String?
  }
  
  extension User {
    init(json: JSON) {
      userId = json["userId"].stringValue
      name = json["name"].stringValue
      email = json["email"].stringValue
      description = json["description"].string
  }
