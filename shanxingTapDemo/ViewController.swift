//
//  ViewController.swift
//  shanxingTapDemo
//
//  Created by sidetang on 2018/2/24.
//  Copyright © 2018年 sidetang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let button = shanxingButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func buttonTapped()  {
        print("tapped")
    }

}

