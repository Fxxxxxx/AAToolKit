//
//  ViewController.swift
//  AAToolKitDemo
//
//  Created by Fxxx on 2019/6/22.
//  Copyright © 2019 AaronFeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = UIColor.init(hexColor: 0xfafafa)
        _ = UIColor.init(r: 166, g: 166, b: 166)
        
//        view.top = 100
//        view.bottom = 200
//        view.left = 100
//        view.right = 200
//        view.width = 100
//        view.height = 100
        
        saveToUserDefaults("hello AAToolKit", forKey: "kit")
        _ = getValueFromUserDefaults(forKey: "kit")
        
        var time = Date().timeIntervalSince1970
        time -= 60 * 60 * 24 * 365
        let timeStamp = "\(Int(time))"
        print(timeStamp.aa.getTimeDescription() ?? "no time")
        
        let label = UILabel()
        view.addSubview(label)
        label.width = 200
        label.height = 200
        label.center = view.center
        label.textColor = .red
        label.numberOfLines = 0
        label.text = #"saveToUserDefaults("hello AAToolKit", forKey: "kit")_ = getValueFromUserDefaults(forKey: "kit")var time = Date().timeIntervalSince1970time -= 60 * 60 * 24 * 365let timeStamp = "\(Int(time))" print(timeStamp.getTimeDescription() ?? "no time")"#
        label.setLineSpace(30)
        label.setWordSpace(20)
        
        view.convertToImage()?.savetoAlbum({ (result, error) in
            if result {
                print("保存成功")
            } else {
                print("保存失败")
                if let err = error {
                    print("\(err.localizedDescription)")
                }
            }
        })
        
        print(self.className())
        print(ViewController.className())
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
}

