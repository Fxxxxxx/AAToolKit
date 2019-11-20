//
//  UIColor+Ex.swift
//  yuhang
//
//  Created by Aaron on 2019/4/30.
//  Copyright © 2019 NewBlue. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    
    convenience init(r: Int, g: Int, b: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a)
    }
    
    convenience init(hexColor: Int64, alpha: CGFloat = 1.0) {
        let red = CGFloat((hexColor & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hexColor & 0xFF00) >> 8) / 255.0
        let blue = CGFloat(hexColor & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        var hex: UInt64 = 0
        var hexS = hexString
            .trimmingCharacters(in: .symbols)
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased()
        if !hexS.hasPrefix("0X") {
            hexS = "0X" + hexS
        }
        Scanner.init(string: hexS).scanHexInt64(&hex)
        self.init(hexColor: Int64(hex), alpha: alpha)
    }
    
}
