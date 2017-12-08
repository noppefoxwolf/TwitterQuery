# TwitterQuery

[![Version](https://img.shields.io/cocoapods/v/TwitterQuery.svg?style=flat)](http://cocoapods.org/pods/TwitterQuery)
[![License](https://img.shields.io/cocoapods/l/TwitterQuery.svg?style=flat)](http://cocoapods.org/pods/TwitterQuery)
[![Platform](https://img.shields.io/cocoapods/p/TwitterQuery.svg?style=flat)](http://cocoapods.org/pods/TwitterQuery)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

swift4.0
ios8.0~

## Installation

TwitterQuery is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TwitterQuery'
```

## Usage

```swift
let q = TwitterQuery(q: "きつね")
          .and(q: "かわいい")
          .from(screenName: "noppefoxwolf")
          .filter(kind: .images, inculde: true)
          .lang(code: .ja)
          .date(term: Term.until(date: Date()))
          .text
print(q)
```

```swift
let q = TwitterQuery(q: "きつね")
q.and(q: "かわいい")
q.from(screenName: "noppefoxwolf")
q.filter(kind: .images, inculde: true)
q.lang(code: .ja)
q.date(term: Term.until(date: Date()))
print(q.text)
```

## Author

🦊Tomoya Hirano, noppelabs@gmail.com

## License

TwitterQuery is available under the MIT license. See the LICENSE file for more info.
