//
//  Distance.swift
//  TwitterQuery
//
//  Created by Tomoya Hirano on 2017/12/08.
//

import UIKit

public enum Distance {
  case km(distance: Int)
  case mi(distance: Int)
  case none
  
  var text: String {
    switch self {
    case .km(let distance): return "\(distance)km"
    case .mi(let distance): return "\(distance)mi"
    default: return ""
    }
  }
}
