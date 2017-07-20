//
//  XibLoadable.swift
//  Extension-TableViewCell
//
//  Created by TsungHan on 2017/7/20.
//  Copyright © 2017年 TsungHan. All rights reserved.
//

import UIKit

// Load Xib
public protocol XibLoadable {}
public extension XibLoadable where Self: UIView {
    
    public static var xib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    public static func viewFromXib() -> Self {
        guard let view = xib.instantiate(withOwner: nil, options: nil).first as? Self else {
            fatalError("載入Xib 失敗")
        }
        return view
    }
}
