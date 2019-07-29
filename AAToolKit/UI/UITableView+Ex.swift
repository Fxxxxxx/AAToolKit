//
//  UITableView+Ex.swift
//  AAToolKitDemo
//
//  Created by Fxxx on 2019/6/22.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import Foundation
import UIKit

public extension UITableView {
    
    func reloadRow(at indexPath: IndexPath, with animation: UITableView.RowAnimation = .automatic) {
        reloadRows(at: [indexPath], with: animation)
    }
    
    func reloadSection(_ section: Int, with animation: UITableView.RowAnimation = .automatic) {
        reloadSections([section], with: animation)
    }
    
    func deleteRow(at indexPath: IndexPath, with animation: UITableView.RowAnimation = .automatic) {
        deleteRows(at: [indexPath], with: animation)
    }
    
    func deleteSection(_ section: Int, with animation: UITableView.RowAnimation = .automatic) {
        deleteSections([section], with: animation)
    }
    
    func insertRow(at indexPath: IndexPath, with animation: UITableView.RowAnimation = .automatic) {
        insertRows(at: [indexPath], with: animation)
    }
    
    func insertSection(_ section: Int, with animation: UITableView.RowAnimation = .automatic) {
        insertSections([section], with: animation)
    }
    
}

public extension UITableViewCell {
    static func nib() -> UINib? {
        let nibName = String.init(describing: self.classForCoder())
        let bundle = Bundle.init(for: self.classForCoder())
        return UINib.init(nibName: nibName, bundle: bundle)
    }
}
