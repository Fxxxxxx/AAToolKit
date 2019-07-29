//
//  UICollectionView+Ex.swift
//  AAToolKitDemo
//
//  Created by Fxxx on 2019/6/22.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import Foundation
import UIKit

public extension UICollectionView {
    
    func reloadItem(at indexPath: IndexPath) {
        reloadItems(at: [indexPath])
    }
    
    func reloadSection(_ section: Int) {
        reloadSections([section])
    }
    
    func deleteItem(at indexPath: IndexPath) {
        deleteItems(at: [indexPath])
    }
    
    func deleteSection(_ section: Int) {
        deleteSections([section])
    }
    
    func insertItem(at indexPath: IndexPath) {
        insertItems(at: [indexPath])
    }
    
    func insertSection(_ section: Int) {
        insertSections([section])
    }
    
}

public extension UICollectionReusableView {
    static func nib() -> UINib? {
        let nibName = String.init(describing: self.classForCoder())
        let bundle = Bundle.init(for: self.classForCoder())
        return UINib.init(nibName: nibName, bundle: bundle)
    }
}
