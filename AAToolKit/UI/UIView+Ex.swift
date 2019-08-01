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
    
    func getViewController() -> UIViewController? {
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
    
    func convertToImage() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 0)
        if let context = UIGraphicsGetCurrentContext() {
            self.layer.render(in: context)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return image
        }
        return nil
    }
    
}

public extension UIView {
    
    var Top: CGFloat {
        get {
            return frame.Top
        }
        set {
            frame.Top = newValue
        }
    }
    
    var Bottom: CGFloat {
        get {
            return frame.Bottom
        }
        set {
            frame.Bottom = newValue
        }
    }
    
    var Left: CGFloat {
        get {
            return frame.Left
        }
        set {
            frame.Left = newValue
        }
    }
    
    var Right: CGFloat {
        get {
            return frame.Right
        }
        set {
            frame.Right = newValue
        }
    }
    
    var Width: CGFloat {
        get {
            return frame.Width
        }
        set {
            frame.Width = newValue
        }
    }
    
    var Height: CGFloat {
        get {
            return frame.Height
        }
        set {
            frame.Height = newValue
        }
    }
    
}
