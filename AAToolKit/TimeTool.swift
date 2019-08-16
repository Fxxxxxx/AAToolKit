//
//  TimeTool.swift
//  AAToolKit
//
//  Created by Aaron on 2019/6/24.
//

import Foundation

extension Double: AAToolProtocol {}
public extension AAToolWrapper where Base == Double {
    
    func getTimeDescription() -> String {
        let forMatter = DateFormatter()
        let now = Date().timeIntervalSince1970
        let duration = now - base
        forMatter.dateFormat = "D"
        let day = Int(forMatter.string(from: .init(timeIntervalSince1970: self.base))) ?? 0
        let nowDay = Int(forMatter.string(from: .init())) ?? 0
        if duration < 60 * 2 {
            //两分钟之内
            return "刚刚"
        } else if duration < 60 * 60 {
            //一小时之内
            return "\(Int(duration / 60))分钟前"
        } else if duration < 60 * 60 * 24 {
            //一天内
            return "\(Int(duration / 60 / 60))小时前"
        } else if nowDay - day == 1 {
            //昨天
            return "昨天"
        } else if nowDay - day == 2 {
            //前天
            return "前天"
        } else if nowDay - day <= 7 {
            //一周内
            return "\(nowDay - day)天前"
        } else {
            forMatter.dateFormat = "y"
            let pointDate = Date.init(timeIntervalSince1970: base)
            let nowYear = forMatter.string(from: Date())
            let pointYear = forMatter.string(from: pointDate)
            if nowYear != pointYear {
                forMatter.dateFormat = "y年M月d日"
            } else {
                forMatter.dateFormat = "M月d日"
            }
            return forMatter.string(from: pointDate)
        }
    }
    
}

extension String: AAToolProtocol {}
public extension AAToolWrapper where Base == String {
    
    func getTimeDescription() -> String? {
        return Double(base)?.aa.getTimeDescription()
    }
    
}

extension Int: AAToolProtocol {}
public extension AAToolWrapper where Base == Int {
    
    func getTimeDescription() -> String {
        return Double(base).aa.getTimeDescription()
    }
    
}
