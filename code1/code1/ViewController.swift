//
//  ViewController.swift
//  code1
//
//  Created by mac on 2018/2/8.
//  Copyright © 2018年 -. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var lblTime: UILabel?
    var btnStart: UIButton?
    var btnPause: UIButton?
    
    var count: Double = 0.0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        CongifViews()
        LoadData()
    }
    
    func CongifViews() -> Void {
        lblTime = UILabel.init()
        btnStart = UIButton.init(type: .system)
        btnPause = UIButton.init(type: .system)
        
        lblTime?.textColor = UIColor.red
        lblTime?.backgroundColor = UIColor.lightGray
        lblTime?.font = UIFont.systemFont(ofSize: 18)
        lblTime?.textAlignment = NSTextAlignment.center
        
        btnStart?.setTitle("开始", for: .normal)
        btnStart?.backgroundColor = UIColor.green
        btnStart?.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btnStart?.addTarget(self, action: #selector(startButtonTapped(_:)), for: .touchUpInside)
        
        btnPause?.setTitle("暂停", for: .normal)
        btnPause?.backgroundColor = UIColor.cyan
        btnPause?.titleLabel?.font = UIFont.systemFont(ofSize: 16);
        btnPause?.addTarget(self, action: #selector(pauseButtonTapped(_:)), for: .touchUpInside)
        
        view.addSubview(lblTime!)
        view.addSubview(btnStart!)
        view.addSubview(btnPause!)
        
        lblTime!.snp.makeConstraints { (make) in
            make.top.equalTo(200)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
        btnStart!.snp.makeConstraints { (make) in
            make.top.equalTo(lblTime!.snp.bottom).offset(50)
            make.centerX.equalToSuperview().offset(-80)
            make.width.equalTo(80)
            make.height.equalTo(50)
        }
        
        btnPause!.snp.makeConstraints { (make) in
            make.top.equalTo(btnStart!.snp.top)
            make.centerX.equalToSuperview().offset(80)
            make.width.equalTo(80)
            make.height.equalTo(50)
        }
        
    }
    
    func LoadData() {
        lblTime?.text = "\(count)"
    }
    
    @objc func updateLabelText() {
        count += 0.1
        
        lblTime?.text = String(format: "%.1f", count)
    }
    
    @objc func startButtonTapped(_ sender: UIButton) {
        btnStart?.isEnabled = false
        btnPause?.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateLabelText), userInfo: nil, repeats: true)
        
        timer.fire()
    }
    
    @objc func pauseButtonTapped(_ sender: UIButton) {
        btnStart?.isEnabled = true
        btnPause?.isEnabled = false
        
        timer.invalidate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

