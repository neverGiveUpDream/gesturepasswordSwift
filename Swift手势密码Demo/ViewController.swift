//
//  ViewController.swift
//  Swift手势密码Demo
//
//  Created by apple on 2017/11/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    ///创建手势密码
    @IBAction func creatGesturepasswordButtonAction(_ sender: UIButton) {
        let creatGesturepasswordVC = HLGestureViewController()
        self.present(creatGesturepasswordVC, animated: true, completion: nil)
        
    }
    ///验证手势密码
    @IBAction func vailteGeturepasswordButtonAction(_ sender: UIButton) {
        if UserDefaults.standard.string(forKey: gesturepasswordKey)?.isEmpty == true {
            print("请先创建手势密码")
            return
        }
        //验证手势密码
        let vaildGesturepasswordVC = HLValidateGestureViewController()
        self.present(vaildGesturepasswordVC, animated: true, completion: nil)
        
    }
    
    
}

