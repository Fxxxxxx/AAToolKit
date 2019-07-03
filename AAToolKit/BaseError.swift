//
//  BaseError.swift
//  AAToolKitDemo
//
//  Created by Aaron on 2019/7/3.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import Foundation

struct BaseError: LocalizedError {
    var desc = ""
    var errorDescription: String? {
        return desc
    }
    var localizedDescription: String {
        return desc
    }
    init(_ desc: String) {
        self.desc = desc
    }
}
