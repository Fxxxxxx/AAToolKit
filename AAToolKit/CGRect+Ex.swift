//
//  CGRect+Ex.swift
//  AAToolKitDemo
//
//  Created by Fxxx on 2019/6/22.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import Foundation
import UIKit

public extension CGRect {
    
    var width: CGFloat {
        get {
            return size.width
        }
        set {
            size.width = newValue
        }
    }
    
    var height: CGFloat {
        get {
            return size.height
        }
        set {
            size.height = newValue
        }
    }
    
    var x: CGFloat {
        get {
            return origin.x
        }
        set {
            origin.x = newValue
        }
    }
    
    var y: CGFloat {
        get {
            return origin.y
        }
        set {
            origin.y = newValue
        }
    }
    
    var top: CGFloat {
        get {
            return y
        }
        set {
            y = newValue
        }
    }
    
    var bottom: CGFloat {
        get {
            return maxY
        }
        set {
            height = newValue - y
        }
    }
    
    var left: CGFloat {
        get {
            return x
        }
        set {
            x = newValue
        }
    }
    
    var right: CGFloat {
        get {
            return maxX
        }
        set {
            width = newValue - x
        }
    }
    
}
