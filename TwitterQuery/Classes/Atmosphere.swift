//
//  Atmosphere.swift
//  TwitterQuery
//
//  Created by Tomoya Hirano on 2017/12/08.
//

import UIKit

public enum Atmosphere {
  case positive
  case negative
  case question
  
  var text: String {
    switch self {
    case .positive: return ":)"
    case .negative: return ":("
    case .question: return "?"
    }
  }
}

