# EZReusable

[![CI Status](http://img.shields.io/travis/NickYuu/EZReusable.svg?style=flat)](https://travis-ci.org/NickYuu/EZReusable)
[![Version](https://img.shields.io/cocoapods/v/EZReusable.svg?style=flat)](http://cocoapods.org/pods/EZReusable)
[![License](https://img.shields.io/cocoapods/l/EZReusable.svg?style=flat)](http://cocoapods.org/pods/EZReusable)
[![Platform](https://img.shields.io/cocoapods/p/EZReusable.svg?style=flat)](http://cocoapods.org/pods/EZReusable)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

EZReusable is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "EZReusable"
```

## Use
```swift 
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, type: MyCell.self)
        return cell
    }
```

## Author

NickYuu, s3310304067@gms.nutc.edu.tw

## License

EZReusable is available under the MIT license. See the LICENSE file for more info.
