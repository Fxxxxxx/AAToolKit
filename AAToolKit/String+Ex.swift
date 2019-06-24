//
//  String+Ex.swift
//  AAToolKit
//
//  Created by Aaron on 2019/6/24.
//

import Foundation

public extension String {
    
    //号码格式正确返回true  不正确返回false
    func checkMobileAvailable(phone: String) -> Bool {
        var mobile: String = phone
        mobile = mobile.replacingOccurrences(of: " ", with: "")
        if mobile.count != 11 {
            return false
        } else {
            // 移动号段正则
            let cm_num = "^((13[4-9])|(147)|(15[0-2,7-9])|(178)|(18[2-4,7-8]))\\d{8}|(1705)\\d{7}$"
            // 联通号段正则
            let cu_num = "^((13[0-2])|(145)|(15[5-6])|(176)|(18[5,6]))\\d{8}|(1709)\\d{7}$"
            // 电信号段正则
            let ct_num = "^((133)|(153)|(177)|(18[0,1,9]))\\d{8}$"
            
            let predicate_cm = NSPredicate(format: "SELF MATCHES %@", cm_num)
            let predicate_cu = NSPredicate(format: "SELF MATCHES %@", cu_num)
            let predicate_ct = NSPredicate(format: "SELF MATCHES %@", ct_num)
            
            let cm_available = predicate_cm.evaluate(with: mobile)
            
            let cu_available = predicate_cu.evaluate(with: mobile)
            
            let ct_available = predicate_ct.evaluate(with: mobile)
            
            if cm_available == true || cu_available == true || ct_available == true {
                return true
            }
            return false
        }
    }
    
}
