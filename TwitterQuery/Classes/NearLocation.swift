//
//  NearLocation.swift
//  TwitterQuery
//
//  Created by Tomoya Hirano on 2017/12/08.
//

import UIKit

public enum NearLocation {
  case me
  case location(location: String)
  
  var text: String {
    switch self {
    case .me: return "me"
    case .location(let location): return location
    }
  }
}
