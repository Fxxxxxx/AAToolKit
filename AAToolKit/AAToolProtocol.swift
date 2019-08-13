//
//  AAToolProtocol.swift
//  AAToolKitDemo
//
//  Created by Aaron on 2019/7/2.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import Foundation

public struct AAToolWrapper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol AAToolProtocol {
    associatedtype AATool
    var aa: AATool { get }
}

public extension AAToolProtocol {
    var aa: AAToolWrapper<Self> {
        return AAToolWrapper.init(self)
    }
}
