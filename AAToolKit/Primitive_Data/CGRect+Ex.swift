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
    
    var Width: CGFloat {
        get {
            return size.height
        }
        set {
            size.width = newValue
        }
    }
    
    var Height: CGFloat {
        get {
            return size.height
        }
        set {
            size.height = newValue
        }
    }
    
    var X: CGFloat {
        get {
            return origin.x
        }
        set {
            origin.x = newValue
        }
    }
    
    var Y: CGFloat {
        get {
            return origin.y
        }
        set {
            origin.y = newValue
        }
    }
    
    var Top: CGFloat {
        get {
            return Y
        }
        set {
            Y = newValue
        }
    }
    
    var Bottom: CGFloat {
        get {
            return maxY
        }
        set {
            Height = newValue - Y
        }
    }
    
    var Left: CGFloat {
        get {
            return X
        }
        set {
            X = newValue
        }
    }
    
    var Right: CGFloat {
        get {
            return maxX
        }
        set {
            Width = newValue - X
        }
    }
    
}
