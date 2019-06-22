//
//  UIView+Ex.swift
//  yuhang
//
//  Created by Aaron on 2019/4/30.
//  Copyright © 2019 NewBlue. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    func viewController() -> UIViewController? {
        var nextResp = next
        while nextResp != nil {
            if nextResp is UIViewController {
                return nextResp as? UIViewController
            }
            nextResp = next
        }
        return nil
    }
    
    func removeAllSubViews() {
        for sub in self.subviews {
            sub.removeFromSuperview()
        }
    }
    
}

public extension UIView {
    
    var top: CGFloat {
        get {
            return frame.top
        }
        set {
            frame.top = newValue
        }
    }
    
    var bottom: CGFloat {
        get {
            return frame.bottom
        }
        set {
            frame.bottom = newValue
        }
    }
    
    var left: CGFloat {
        get {
            return frame.left
        }
        set {
            frame.left = newValue
        }
    }
    
    var right: CGFloat {
        get {
            return frame.right
        }
        set {
            frame.right = newValue
        }
    }
    
    var width: CGFloat {
        get {
            return frame.width
        }
        set {
            frame.width = newValue
        }
    }
    
    var height: CGFloat {
        get {
            return frame.height
        }
        set {
            frame.height = newValue
        }
    }
    
}
