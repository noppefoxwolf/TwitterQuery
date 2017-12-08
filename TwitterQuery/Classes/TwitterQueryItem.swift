//
//  TwitterQueryItem.swift
//  TwitterQuery
//
//  Created by Tomoya Hirano on 2017/12/08.
//

import UIKit

public enum TwitterQueryItem {
  case q(text: String)
  case and(text: String)
  case or(text: String)
  case ignore(text: String)
  case hashtag(text: String)
  case from(screenName: String)
  case to(screenName: String)
  case replyTo(screenName: String)
  case client(name: String)
  case date(term: Term)
  case atmosphere(atmosphere: Atmosphere)
  case lang(code: LangCode)
  case retweet(include: Bool)
  case list(user: String, listName: String)
  case geocode(lat: Float, lon: Float, distance: Distance)
  case near(location: NearLocation, within: Distance)
  case filter(kind: FilterKind, inculde: Bool)
  case minRetweets(count: Int)
  case minFaves(count: Int)
  case minReplies(count: Int)
  
  var text: String {
    switch self {
    case .q(let text): return text
    case .and(let text): return text
    case .or(let text): return "OR \(text)"
    case .ignore(let text): return "-\(text)"
    case .hashtag(let text): return "#\(text)"
    case .from(let screenName): return "from:\(screenName)"
    case .to(let screenName): return "to:\(screenName)"
    case .replyTo(let screenName): return "@\(screenName)"
    case .client(let name): return "source:\(name)"
    case .date(let term): return term.text
    case .atmosphere(let atmosphere): return atmosphere.text
    case .lang(let code): return "lang:\(code.rawValue)"
    case .retweet(let include): return include ? "include:retweets" : "exclude:retweets"
    case .list(let user, let listName): return "list:\(user)/\(listName)"
    case .geocode(let lat, let lon, let distance):
      var q = "geocode:\(lat),\(lon)"
      switch distance {
      case .none: break
      default:
        q += ",\(distance.text)"
      }
      return q
    case .near(let location, let within):
      var q = "near:\(location.text)"
      switch within {
      case .none: break
      default:
        q += " within:\(within.text)"
      }
      return q
    case .filter(let kind, let inculde): return "\(inculde ? "" : "-")filter:\(kind)"
    case .minFaves(let count): return "min_faves:\(count)"
    case .minReplies(let count): return "min_replies:\(count)"
    case .minRetweets(let count): return "min_retweets:\(count)"
    }
  }
}


