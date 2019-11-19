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
        
//        _ = UIColor.init(hexColor: 0xfafafa)
//        _ = UIColor.init(r: 166, g: 166, b: 166)
        
//        view.top = 100
//        view.bottom = 200
//        view.left = 100
//        view.right = 200
//        view.width = 100
//        view.height = 100
        
        saveToUserDefaults("hello AAToolKit", forKey: "kit")
        _ = getValueFromUserDefaults(forKey: "kit")
        
        var time = Date().timeIntervalSince1970
        time -= 60 * 60 * 23
        let timeStamp = "\(Int(time))"
        print(timeStamp.aa.getTimeDescription() ?? "no time")
        
        let label = UILabel()
        view.addSubview(label)
        label.Width = 200
        label.Height = 200
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
        
        print(self.ClassName())
        print(ViewController.ClassName())
        
        let str = "hello world"
        let c = str[1]
        print(c)
        
        let color = UIColor.init(hexString: "ffffff")
        print(color ?? "no color")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    @IBAction func action(_ sender: UIButton) {
        if self.presentingViewController != nil {
            self.dismiss(animated: true, completion: nil)
        } else {
            let vc = self.storyboard?.instantiateInitialViewController()
            self.present(to: vc!)
        }
    }
    
}

