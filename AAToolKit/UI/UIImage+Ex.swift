//
//  UIImage+Ex.swift
//  yuhang
//
//  Created by Aaron on 2019/5/15.
//  Copyright © 2019 NewBlue. All rights reserved.
//

import UIKit
import Photos

public extension UIImage {
    
    func alwaysOriginal() -> UIImage {
        return self.withRenderingMode(.alwaysOriginal)
    }
    
    func alwaysTemplate() -> UIImage {
        return self.withRenderingMode(.alwaysTemplate)
    }
    
    func savetoAlbum(_ completionHandler: ((Bool, Error?) -> Void)? = nil) {
        PHPhotoLibrary.requestAuthorization { (status) in
            switch status {
            case .authorized:
                PHPhotoLibrary.shared().performChanges({
                    PHAssetChangeRequest.creationRequestForAsset(from: self)
                }, completionHandler: completionHandler)
            default:
                completionHandler?(false, BaseError.init("not authorized"))
            }
        }
    }
    
    convenience init?(name: String, bundleName: String) {
        let path = Bundle.main.path(forResource: bundleName, ofType: "bundle") ?? ""
        let bundle = Bundle.init(path: path)
        self.init(named: name, in: bundle, compatibleWith: nil)
    }
    
    static func getImageFrom(color: UIColor, size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContext(size)
        UIGraphicsGetCurrentContext()?.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()?.fill(.init(origin: .zero, size: size))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
}
