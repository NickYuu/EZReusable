//
//  UITableView.swift
//  Extension-TableViewCell
//
//  Created by TsungHan on 2017/7/20.
//  Copyright © 2017年 TsungHan. All rights reserved.
//

import UIKit


public extension UITableView {
    
    public final func register<T: UITableViewCell>(type: T.Type) where T: XibReusable  {
        self.register(type.xib, forCellReuseIdentifier: type.reuseID)
    }
    
    public final func register<T: UITableViewCell>(type: T.Type) where T: Reusable {
        self.register(type.self, forCellReuseIdentifier: type.reuseID)
    }
    
    public final func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath, type: T.Type = T.self) -> T where T: Reusable {
        guard let cell = self.dequeueReusableCell(withIdentifier: type.reuseID, for: indexPath) as? T else {
            fatalError("DequeueReusableCell Error")
        }
        return cell
    }
    
}
