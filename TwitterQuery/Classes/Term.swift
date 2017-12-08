//
//  Term.swift
//  TwitterQuery
//
//  Created by Tomoya Hirano on 2017/12/08.
//

import UIKit

public enum Term {
  case since(date: Date)
  case until(date: Date)
  
  var text: String {
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "en_US")
    dateFormatter.dateFormat = "yyyy-MM-dd"
    switch self {
    case .since(let date): return "since:" + dateFormatter.string(from: date)
    case .until(let date): return "until:" + dateFormatter.string(from: date)
    }
  }
}

