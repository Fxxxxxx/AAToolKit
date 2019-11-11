//
//  UIApplication+Ex.swift
//  AAToolKitDemo
//
//  Created by cztv on 2019/10/25.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import UIKit

public extension UIApplication {
    func getKeyWindow() -> UIWindow? {
        return UIApplication.shared.windows.first { (win) -> Bool in
            win.isKeyWindow
        }
    }
    
    func open(url: String) {
        if let url = URL.init(string: url) {
            if #available(iOS 10.0, *) {
                open(url, options: [:], completionHandler: nil)
            } else {
                openURL(url)
            }
        }
    }
}
