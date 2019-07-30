//
//  ViewController.swift
//  h5ConsoleApp
//
//  Created by didi on 2019/6/22.
//  Copyright © 2019年 didi. All rights reserved.
//
import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: transformColor(value: 21), green: transformColor(value: 22), blue: transformColor(value: 29), alpha: 1)
        
        // 创建扫码按钮
        let scan_button_rect = CGRect(x: 95, y: 290, width: 196, height: 44)
        let scan_label_rect = CGRect(x: 0, y: 0, width: 196, height: 44)
        let scan_button = UIButton(frame: scan_button_rect)
        let scan_label = UILabel(frame: scan_label_rect)
        scan_label.backgroundColor = UIColor(red: transformColor(value: 0), green: transformColor(value: 187), blue: transformColor(value: 132), alpha: 1)
        // 设置按钮圆角
        scan_label.layer.masksToBounds = true
        scan_label.layer.cornerRadius = 7
        scan_label.textColor = UIColor.white
        scan_label.font = UIFont.systemFont(ofSize: 16)
        scan_label.textAlignment = NSTextAlignment.center
        scan_label.text = "Tap to scan"
        scan_button.isUserInteractionEnabled = true
        scan_button.addSubview(scan_label)
        scan_button.addTarget(self, action: #selector(fireScan), for: .touchUpInside)
        view.addSubview(scan_button)
    }
    
    @objc func fireScan() {
      self.navigationController?.pushViewController(ScannerViewController(), animated: true)
    }

}
