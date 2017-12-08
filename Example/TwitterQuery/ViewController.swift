//
//  ViewController.swift
//  TwitterQuery
//
//  Created by 🦊Tomoya Hirano on 12/08/2017.
//  Copyright (c) 2017 🦊Tomoya Hirano. All rights reserved.
//

import UIKit
import TwitterQuery

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    test1()
    test2()
  }
  
  private func test1() {
    let q = TwitterQuery(q: "きつね")
      .and(q: "かわいい")
      .from(screenName: "noppefoxwolf")
      .filter(kind: .images, inculde: true)
      .lang(code: .ja)
      .date(term: Term.until(date: Date()))
      .text
    print(q)
  }
  
  private func test2() {
    let q = TwitterQuery(q: "きつね")
    q.and(q: "かわいい")
    q.from(screenName: "noppefoxwolf")
    q.filter(kind: .images, inculde: true)
    q.lang(code: .ja)
    q.date(term: Term.until(date: Date()))
    print(q.text)
  }
}

