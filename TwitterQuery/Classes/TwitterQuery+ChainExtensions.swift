//
//  TwitterQuery+ChainExtensions.swift
//  TwitterQuery
//
//  Created by Tomoya Hirano on 2017/12/08.
//

import UIKit


extension TwitterQuery {
  @discardableResult
  public func and(q: String) -> TwitterQuery {
    items.append(.and(text: q))
    return self
  }
  
  @discardableResult
  public func or(q: String) -> TwitterQuery {
    items.append(.or(text: q))
    return self
  }
  
  @discardableResult
  public func ignore(q: String) -> TwitterQuery {
    items.append(.ignore(text: q))
    return self
  }
  
  @discardableResult
  public func hashtag(q: String) -> TwitterQuery {
    items.append(.hashtag(text: q))
    return self
  }
  
  @discardableResult
  public func from(screenName: String) -> TwitterQuery {
    items.append(.from(screenName: screenName))
    return self
  }
  
  @discardableResult
  public func to(screenName: String) -> TwitterQuery {
    items.append(.to(screenName: screenName))
    return self
  }
  
  @discardableResult
  public func replyTo(screenName: String) -> TwitterQuery {
    items.append(.replyTo(screenName: screenName))
    return self
  }
  
  @discardableResult
  public func client(name: String) -> TwitterQuery {
    items.append(.client(name: name))
    return self
  }
  
  @discardableResult
  public func date(term: Term) -> TwitterQuery {
    items.append(.date(term: term))
    return self
  }
  
  @discardableResult
  public func atmosphere(atmosphere: Atmosphere) -> TwitterQuery {
    items.append(.atmosphere(atmosphere: atmosphere))
    return self
  }
  
  @discardableResult
  public func lang(code: LangCode) -> TwitterQuery {
    items.append(.lang(code: code))
    return self
  }
  
  @discardableResult
  public func retweet(include: Bool) -> TwitterQuery {
    items.append(.retweet(include: include))
    return self
  }
  
  @discardableResult
  public func list(user: String, listName: String) -> TwitterQuery {
    items.append(.list(user: user, listName: listName))
    return self
  }
  
  @discardableResult
  public func geocode(lat: Float, lon: Float, distance: Distance) -> TwitterQuery {
    items.append(.geocode(lat: lat, lon: lon, distance: distance))
    return self
  }
  
  @discardableResult
  public func near(location: NearLocation, within: Distance) -> TwitterQuery {
    items.append(.near(location: location, within: within))
    return self
  }
  
  @discardableResult
  public func filter(kind: FilterKind, inculde: Bool) -> TwitterQuery {
    items.append(.filter(kind: kind, inculde: inculde))
    return self
  }
  
  @discardableResult
  public func minRetweets(count: Int) -> TwitterQuery {
    items.append(.minRetweets(count: count))
    return self
  }
  
  @discardableResult
  public func minFaves(count: Int) -> TwitterQuery {
    items.append(.minFaves(count: count))
    return self
  }
  
  @discardableResult
  public func minReplies(count: Int) -> TwitterQuery {
    items.append(.minReplies(count: count))
    return self
  }
  
  public func append(_ item: TwitterQueryItem) {
    self.items.append(item)
  }
}

