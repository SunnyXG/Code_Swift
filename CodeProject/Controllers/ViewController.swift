//
//  ViewController.swift
//  CodeProject
//
//  Created by mac on 2018/2/7.
//  Copyright © 2018年 -. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "首页"
        
        ConfigView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ConfigView() -> Void {
        let lbl = UILabel.init()
        
        lbl.text = "这是一个Lable"
        lbl.backgroundColor = UIColor.lightText
        lbl.textColor = UIColor.blue
        lbl.textAlignment = NSTextAlignment.center
        lbl.font = UIFont.systemFont(ofSize: 16)
        
        self.view.addSubview(lbl)
        
        lbl.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view)
            make.width.equalTo(200)
            make.height.equalTo(60)
        }
    }


}

