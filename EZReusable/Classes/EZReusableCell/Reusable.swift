//
//  Reusable.swift
//  Extension-TableViewCell
//
//  Created by TsungHan on 2017/7/20.
//  Copyright © 2017年 TsungHan. All rights reserved.
//

import UIKit

// Reusable Cell From Code
public protocol Reusable: class {}
public extension Reusable where Self: UITableViewCell {
    static var reuseID: String {
        return String(describing: self)
    }
}
