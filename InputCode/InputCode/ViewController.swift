//
//  ViewController.swift
//  InputCode
//
//  Created by quandemacbook on 2017/1/12.
//  Copyright © 2017年 jackxu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let inputView  =  InputCodeView(frame:CGRect(x: 100, y: 100, width: 200, height: 100))
        inputView.buttonCallBack = {(para:String) -> () in
            print("--------\(para)")
        }
        
        self.view.addSubview(inputView)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

