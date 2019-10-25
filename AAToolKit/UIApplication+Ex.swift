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
}
