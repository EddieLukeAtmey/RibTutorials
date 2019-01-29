//
//  NSObject+Extension.swift
//  EDSwiftCore
//
//  Created by Eddie on 1/29/19.
//  Copyright © 2019 Eddie. All rights reserved.
//
import Foundation

extension NSObject {
    var className: String { return String(describing: type(of: self)) }

    class var className: String {
        return String(describing: self)
    }
}
