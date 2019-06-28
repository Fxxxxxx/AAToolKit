//
//  UILable+Ex.swift
//  AAToolKitDemo
//
//  Created by Fxxx on 2019/6/28.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import Foundation
import UIKit

public extension UILabel {
    
    func setLineSpace(_ space: CGFloat) {
        var attributedStr: NSMutableAttributedString? = nil
        if attributedText != nil {
            attributedStr = .init(attributedString: attributedText!)
        } else if text != nil {
            attributedStr = .init(string: text!)
        } else {
            return
        }
        let style = NSMutableParagraphStyle.init()
        style.lineSpacing = space
        attributedStr?.addAttributes([.paragraphStyle: style], range: NSMakeRange(0, attributedStr!.length))
        attributedText = attributedStr
        sizeToFit()
    }
    
    func setWordSpace(_ space: CGFloat) {
        var attributedStr: NSMutableAttributedString? = nil
        if attributedText != nil {
            attributedStr = .init(attributedString: attributedText!)
        } else if text != nil {
            attributedStr = .init(string: text!)
        } else {
            return
        }
        attributedStr?.addAttributes([.kern: space], range: NSMakeRange(0, attributedStr!.length))
        attributedText = attributedStr
        sizeToFit()
    }
    
}
