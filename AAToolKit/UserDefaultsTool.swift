//
//  UserDefaultsTool.swift
//  AAToolKitDemo
//
//  Created by Fxxx on 2019/6/22.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import Foundation

public func saveToUserDefaults(_ value: Any?, forKey key: String) {
    let ud = UserDefaults.standard
    ud.set(value, forKey: key)
    ud.synchronize()
}

public func getValueFromUserDefaults(forKey key: String) -> Any? {
    return UserDefaults.standard.value(forKey: key)
}
