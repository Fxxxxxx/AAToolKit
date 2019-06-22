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
        
        let color = UIColor.init(hexColor: 0xbbbbbb)
        print(color)
        view.backgroundColor = color
          
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(view.bottom)
    }
    

}

