//
//  NSObject+Ex.swift
//  AAToolKitDemo
//
//  Created by Aaron on 2019/7/22.
//  Copyright © 2019 AaronFeng. All rights reserved.
//
import Foundation

public extension NSObject {
    func className() -> String {
        return String.init(describing: type(of: self))
    }
}
