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
    
    func present(to vc: UIViewController, style: UIModalPresentationStyle = .fullScreen, animated: Bool = true, completion: (() -> Void)? = nil) {
        vc.modalPresentationStyle = style
        var target = self
        while target.presentedViewController != nil {
            target = target.presentedViewController!
        }
        target.present(vc, animated: animated, completion: completion)
    }
    
    func showAlert(title: String?, message: String?) {
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        alert.addAction(.init(title: "确定", style: .default, handler: nil))
        self.present(to: alert)
    }
    
}
