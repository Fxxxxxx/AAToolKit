//
//  UIViewController+Ex.swift
//  yuhang
//
//  Created by Aaron on 2019/4/30.
//  Copyright © 2019 NewBlue. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController {
    
    func pushTo(viewcontroller: UIViewController, hidesBottomBar: Bool = true, animated: Bool = true) {
        viewcontroller.hidesBottomBarWhenPushed = hidesBottomBar
        self.navigationController?.pushViewController(viewcontroller, animated: animated)
    }
    
    func pop(animated: Bool = true) {
        self.navigationController?.popViewController(animated: animated)
    }
    
}
