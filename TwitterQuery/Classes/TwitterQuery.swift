//
//  TwitterQuery.swift
//  TwitterQuery
//
//  Created by Tomoya Hirano on 2017/12/08.
//

import UIKit

public class TwitterQuery {
  public internal(set) var items = [TwitterQueryItem]()
  
  public init(q: String) {
    items.append(.q(text: q))
  }
  
  public var text: String {
    return items.reduce("") { (result, item) -> String in
      if result == "" {
        return item.text
      } else {
        return result + " " + item.text
      }
    }
  }
}
